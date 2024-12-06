const Transaksi = require('../models/transaksiModel')
const TransaksiDetail = require('../models/transaksiDetailModel')
const User = require('../models/userModel')
const Cabang = require('../models/cabangModel')
const Barang = require('../models/barangModel')
const moment = require('moment')
const Op = require('sequelize')
const db = require('../config/database')
const {snap, coreApi} = require('../config/midtransConfig');

exports.getTransaksi = async (req,res) =>{
    try {
        const transaksi = await Transaksi.findAll({
            attributes:['uuid','totaljual','useruuid','tanggal','pembayaran'],
            include: [
              {
                model: User,
                attributes: ['uuid', 'username', 'cabanguuid'],
                include: [
                  {
                    model: Cabang,
                    attributes: ['uuid', 'namacabang'] 
                  }
                ]
              }
            ]
        })
        res.status(200).json({
            status:200,
            message: 'succes',
            data: transaksi
        })
        
    } catch (error) {
        res.status(500).json(error.message)
    }
}

exports.getTransaksiByUuid = async (req,res) => {
    try {
        const {uuid} = req.params;
        const transaksi = await Transaksi.findOne({
            where:{
                uuid
            }
        })
        if(!transaksi){
            res.status(404).json('Transaksi tidak di temukan')
        }
        res.status(200).json({
            status:200,
            message: 'succes',
            data: transaksi
        })
    } catch (error) {
        
    }
}

exports.rekapHarianUser = async (req, res) => {
  try {
      const tanggal = req.query.tanggal || undefined;
      console.log('Tanggal Query:', tanggal);
      if (tanggal && !moment(tanggal, 'YYYY-MM-DD', true).isValid()) {
          return res.status(400).json({ message: 'Format tanggal tidak valid, gunakan YYYY-MM-DD' });
      }
      const startOfDay = moment.tz(tanggal, 'Asia/Jakarta').startOf('day').toDate();
      const endOfDay = moment.tz(tanggal, 'Asia/Jakarta').endOf('day').toDate();
      console.log('Start of Day:', startOfDay);
      console.log('End of Day:', endOfDay);
      const user = req.user;
      if (!user) {
          return res.status(401).json({ message: 'Anda tidak login' });
      }
      console.log('User UUID:', user.uuid);
      const transaksi = await Transaksi.findAll({
          where: {
              useruuid: user.uuid,
              
          },
          include: [
              {
                  model: TransaksiDetail,
                  createdAt: {
                    [Op.gte]: startOfDay,
                    [Op.lt]: endOfDay,
                },
                  include: [
                      {
                          model: Barang,
                          attributes: ['namabarang', 'harga','createdAt'],
                      },
                  ],
              },
              {
                  model: User,
                  attributes: ['uuid', 'username', 'role', 'cabanguuid'],
                  include: [
                      {
                          model: Cabang,
                          attributes: ['namacabang', 'alamat'],
                      },
                  ],
              },
          ],
      });

      if (!transaksi || transaksi.length === 0) {
          return res.status(404).json({ message: 'Transaksi tidak ditemukan' });
      }

      const transaksiSuccess = transaksi.filter(trans => trans.status_pembayaran === 'settlement');
    const transaksiPending = transaksi.filter(trans => trans.status_pembayaran === 'pending');
    const transaksiCashSuccess = transaksiSuccess.filter(trans => trans.pembayaran === 'cash');
    const transaksiQrisSuccess = transaksiSuccess.filter(trans => trans.pembayaran === 'qris');
    const transaksiCashPending = transaksiPending.filter(trans => trans.pembayaran === 'cash');
    const transaksiQrisPending = transaksiPending.filter(trans => trans.pembayaran === 'qris');

    const calculateTotal = (transactions) => {
      return transactions.reduce((acc, trans) => acc + parseFloat(trans.totaljual || 0), 0);
    };

    const totalPenjualanSuccess = calculateTotal(transaksiSuccess);
    const totalPenjualanPending = calculateTotal(transaksiPending);
    const totalPenjualanCashSuccess = calculateTotal(transaksiCashSuccess);
    const totalPenjualanQrisSuccess = calculateTotal(transaksiQrisSuccess);
    const totalPenjualanCashPending = calculateTotal(transaksiCashPending);
    const totalPenjualanQrisPending = calculateTotal(transaksiQrisPending);
    // const totalPenjualanSuccess = transaksiSuccess.reduce((acc, trans) => {
    //   return acc + parseFloat(trans.totaljual || 0);
    // }, 0);

    // const totalPenjualanPending = transaksiPending.reduce((acc, trans) => {
    //   return acc + parseFloat(trans.totaljual || 0);
    // }, 0);
      // const totalPenjualan = transaksi.reduce((acc, trans) => {
      //   return acc + parseFloat(trans.totaljual || 0);
      // }, 0);

      res.status(200).json({
          status: 200,
          message: 'Data rekap harian berhasil diambil',
          //totalPenjualan,
          totalPenjualanSuccess,
          totalPenjualanPending,
          data: {
            transaksiSuccess,
            transaksiPending
          }
        })
  } catch (error) {
      console.error('Error in rekapHarianUser:', error.message);
      res.status(500).json({ message: error.message });
  }
};


exports.getTransaksiByUser = async (req, res) => {
  // const { useruuid } = req.params;
  try {
    const user = req.user
      const transaksi = await Transaksi.findAll({
          where: { useruuid:user.uuid },
          include: [
              {
                  model: TransaksiDetail,
                  include: [
                      {
                          model: Barang,
                          attributes: ['namabarang', 'harga'],
                      },
                  ],
              },
              {
                  model: User,
                  attributes:['uuid','username','role','cabanguuid'],
                  include: [
                      {
                          model: Cabang,
                          attributes: ['namacabang', 'alamat'],
                      },
                  ],
                  attributes: ['username', 'role'], 
              },
          ],
      });

      if (!transaksi || transaksi.length === 0) {
          return res.status(404).json({ message: "No transactions found for this user" });
      }

      res.status(200).json({
          status: 200,
          message: 'success',
          data: transaksi,
      });
  } catch (error) {
      res.status(500).json({ message: error.message });
  }
};


exports.getTransaksiCabang = async (req,res) => {
  try {
    const transaksi = await Transaksi.findAll({
        attributes: ['uuid', 'totaljual', 'useruuid', 'tanggal', 'pembayaran'],
        include: [
            {
                model: User,
                attributes: ['uuid', 'username', 'cabanguuid'],
                include: [
                    {
                        model: Cabang,
                        attributes: ['uuid', 'namacabang'],
                        required: false
                    }
                ]
            }
        ]
    });
    const groupedTransaksi = transaksi.reduce((acc, item) => {
        const cabangName = item.User.Cabang?.namacabang || 'Tanpa Cabang';
        if (!acc[cabangName]) {
            acc[cabangName] = { namacabang: cabangName, transaksi: [] };
        }
        acc[cabangName].transaksi.push(item);
        return acc;
    }, {});

    res.status(200).json({
        status: 200,
        message: 'Success',
        data: groupedTransaksi
    });
} catch (error) {
    res.status(500).json({ message: error.message });
}
};


//--------------TRANSAKSI STATUS NOTIFIKASI--------//
exports.createTransaksi = async (req, res) => {
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
    if (!pembayaran || !items || !Array.isArray(items) || items.length === 0) {
      return res.status(400).json({
        status: false,
        message: "Data tidak lengkap atau format tidak sesuai",
      });
    }
    const barangUuids = items.map((item) => item.baranguuid);
    const barangList = await Barang.findAll({
      where: { uuid: barangUuids },
      attributes: ['uuid', 'namabarang', 'harga'],
    });

    const barangMap = new Map(barangList.map((barang) => [barang.uuid, barang]));
    let totaljual = 0;

    const validatedItems = items.map((item) => {
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
    const transaksi = await Transaksi.create(
      {
        order_id: orderId,
        useruuid: user.uuid,
        totaljual,
        pembayaran,
        status_pembayaran: pembayaran === 'cash' ? 'settlement' : 'pending',
        tanggal: new Date(),
      },
      { transaction: t }
      
    );

    const transaksiDetails = await Promise.all(
      validatedItems.map((item) =>
        TransaksiDetail.create(
          {
            transaksiuuid: transaksi.uuid,
            baranguuid: item.baranguuid,
            jumlahbarang: item.jumlahbarang,
            harga: item.harga,
            total: item.total,
          },
          { transaction: t }
        )
      )
    );

    let response = {
      status: true,
      message: "Transaksi berhasil dibuat",
      data: {
        transaksi: {
          ...transaksi.toJSON(),
          details: transaksiDetails,
        },
      },
    };

    //---------------integrasi qris ----------------
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
       // generated_image_url: midtransResponse.qr_code_url
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


exports.updateTransaksi = async (req, res) => {
  const { uuid } = req.params; 
  const { pembayaran, items } = req.body;
  const t = await db.transaction();

  try {
    const transaksi = await Transaksi.findByPk(uuid, { transaction: t });

    if (!transaksi) {
      await t.rollback();
      return res.status(404).json({ 
        status: false, 
        message: "Transaksi tidak ditemukan" 
      });
    }
    if (pembayaran) {
      transaksi.pembayaran = pembayaran;
      transaksi.status_pembayaran = pembayaran === 'cash' ? 'settlement' : 'pending';
    }

    if (items && Array.isArray(items) && items.length > 0) {
      const barangUuids = items.map((item) => item.baranguuid);
      const barangList = await Barang.findAll({
        where: { uuid: barangUuids },
        transaction: t
      });

      if (barangList.length !== items.length) {
        await t.rollback();
        return res.status(404).json({ 
          status: false, 
          message: "Beberapa barang tidak ditemukan" 
        });
      }
      const barangMap = new Map(
        barangList.map((barang) => [barang.uuid, barang])
      );

      let totaljual = 0;

      const updatedDetails = items.map((item) => {
        const barang = barangMap.get(item.baranguuid);

        if (!barang) {
          throw new Error(`Barang dengan UUID ${item.baranguuid} tidak ditemukan`);
        }

        const total = parseFloat(barang.harga) * item.jumlahbarang;
        totaljual += total;

        return {
          transaksiuuid: transaksi.uuid,
          baranguuid: item.baranguuid,
          jumlahbarang: item.jumlahbarang,
          pembayaran,
          status_pembayaran: pembayaran === 'cash' ? 'settlement' : 'pending',
          harga: barang.harga,
          total
        };
      });
      await TransaksiDetail.destroy({ 
        where: { transaksiuuid: transaksi.uuid },
        transaction: t 
      });
      await TransaksiDetail.bulkCreate(updatedDetails, { transaction: t });
      transaksi.totaljual = totaljual;
    }
    await transaksi.save({ transaction: t });

    await t.commit();

    return res.status(200).json({
      status: true,
      message: "Transaksi berhasil diperbarui",
      data: transaksi
    });

  } catch (error) {
    await t.rollback();
    return res.status(500).json({
      status: false,
      message: error.message
    });
  }
};

exports.deleteTransaksi = async (req,res) => {
    const { uuid } = req.params; 
    try {
        const transaksi = await Transaksi.findByPk(uuid);
        if (!transaksi) {
            return res.status(404).json({ message: "Transaction not found" });
          }
          await TransaksiDetail.destroy({ where: {transaksiuuid: uuid} });
          await transaksi.destroy();
          res.status(204).json({
            status:204,
            message: "Transaction deleted successfully",
          })
    } catch (error) {
        res.status(500).json(error.message)
    }
}
