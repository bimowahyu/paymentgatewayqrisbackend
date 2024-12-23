const Transaksi = require('../models/transaksiModel')
const TransaksiDetail = require('../models/transaksiDetailModel')
const User = require('../models/userModel')
const Cabang = require('../models/cabangModel')
const Barang = require('../models/barangModel')
const BarangCabang = require('../models/BarangCabang')
const moment = require('moment-timezone')
const Op = require('sequelize')
const db = require('../config/database')
const {snap, coreApi} = require('../config/midtransConfig');

//---------------TEST TRANSAKSICabang----------------
exports.createTransaksiCabang = async (req, res) => {
    const t = await db.transaction();
  
    try {
      const { pembayaran, items } = req.body;
      const user = req.user;
  
      if (!user) {
        return res.status(401).json({
          status: false,
          message: "Silahkan login terlebih dahulu",
        });
      }
      if (user.role !== 'kasir') {
        return res.status(403).json({
          status: false,
          message: "Anda tidak memiliki akses untuk melakukan transaksi",
        });
      }
  
      if (!pembayaran || !items || !Array.isArray(items) || items.length === 0) {
        return res.status(400).json({
          status: false,
          message: "Data tidak lengkap atau format tidak sesuai",
        });
      }
      const barangUuids = items.map(item => item.baranguuid);
      const availableProducts = await Barang.findAll({
        include: [{
          model: BarangCabang,
          where: { cabanguuid: user.cabanguuid },
          attributes: []
        }],
        where: { uuid: barangUuids },
        attributes: ['uuid', 'namabarang', 'harga']
      });
  
      if (availableProducts.length !== barangUuids.length) {
        return res.status(400).json({
          status: false,
          message: "Beberapa barang tidak tersedia di cabang ini"
        });
      }
  
      const barangMap = new Map(
        availableProducts.map(barang => [barang.uuid, barang])
      );
  
      let totaljual = 0;
  
  
      const validatedItems = items.map(item => {
        const barang = barangMap.get(item.baranguuid);
        if (!barang) {
          throw new Error(`Barang dengan UUID ${item.baranguuid} tidak ditemukan`);
        }
        
        const total = parseFloat(barang.harga) * item.jumlahbarang;
        totaljual += total;
  
        return {
          ...item,
          harga: barang.harga,
          total,
        };
      });
  
  
      const orderId = `ORDER-${new Date().getTime()}`;
      const transaksi = await Transaksi.create({
        order_id: orderId,
        useruuid: user.uuid,
        cabanguuid: user.cabanguuid,
        totaljual,
        pembayaran,
        status_pembayaran: pembayaran === 'cash' ? 'settlement' : 'pending',
        tanggal: new Date(),
      }, { transaction: t });
  
      await Promise.all(validatedItems.map(async (item) => {
    
        await TransaksiDetail.create({
          transaksiuuid: transaksi.uuid,
          baranguuid: item.baranguuid,
          jumlahbarang: item.jumlahbarang,
          harga: item.harga,
          total: item.total,
        }, { transaction: t });
      }));
  
      let response = {
        status: true,
        message: "Transaksi berhasil dibuat",
        data: {
          transaksi: {
            ...transaksi.toJSON(),
            details: validatedItems
          },
        },
      };
  
      if (pembayaran === 'qris') {
        const parameter = {
          payment_type: "qris",
          transaction_details: {
            order_id: orderId,
            gross_amount: parseInt(totaljual)
          },
          item_details: validatedItems.map(item => ({
            id: item.baranguuid,
            price: parseInt(item.harga),
            quantity: parseInt(item.jumlahbarang),
            name: barangMap.get(item.baranguuid).namabarang
          })),
          customer_details: {
            first_name: user.username,
            email: user.email
          }
        };
  
        const midtransResponse = await coreApi.charge(parameter);
        const qrisUrl = midtransResponse.actions?.find(
          action => action.name === 'generate-qr-code'
        )?.url;
  
        if (!qrisUrl) {
          throw new Error("Gagal mendapatkan URL QRIS dari Midtrans");
        }
  
        response.data.qris_data = {
          qr_string: midtransResponse.qr_string,
          payment_code: midtransResponse.payment_code,
          generated_image_url: qrisUrl
        };
      }
  
      await t.commit();
      return res.status(201).json(response);
  
    } catch (error) {
      await t.rollback();
      return res.status(500).json({
        status: false,
        message: error.message,
      });
    }
  };
  