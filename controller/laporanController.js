const { Op } = require('sequelize');
const Transaksi = require('../models/transaksiModel');
const TransaksiDetail = require('../models/transaksiDetailModel');
const User = require('../models/userModel');
const Barang = require('../models/barangModel');
const Cabang = require('../models/cabangModel');

exports.laporan = async (req, res) => {
  try {
    const { startDate, endDate, pembayaran, cabanguuid } = req.query;
    const user = req.user;

    // Check authorization
    if (!['superadmin', 'admin'].includes(user.role)) {
      return res.status(403).json({
        status: false,
        message: "Unauthorized: Access restricted"
      });
    }
    let whereConditions = {};
    let cabangFilter = {};
    if (startDate && endDate) {
      whereConditions.tanggal = {
        [Op.between]: [new Date(startDate), new Date(endDate)]
      };
    }
    if (pembayaran) {
      whereConditions.pembayaran = pembayaran;
    }
    whereConditions.status_pembayaran = 'settlement';
    if (user.role === 'admin') {
      cabangFilter.uuid = user.cabanguuid;
    } else if (cabanguuid) {
      cabangFilter.uuid = cabanguuid;
    }
    const salesData = await Transaksi.findAll({
      where: whereConditions,
      include: [
        {
          model: User,
          attributes: ['username'],
          where: cabangFilter.uuid ? { cabanguuid: cabangFilter.uuid } : {},
          include: [{
            model: Cabang,
            attributes: ['namacabang'],
            where: cabangFilter
          }]
        },
        {
          model: TransaksiDetail,
          include: [{
            model: Barang,
            attributes: ['namabarang']
          }]
        }
      ],
      order: [['tanggal', 'DESC']]
    });

    // Process and aggregate the data
    const salesSummary = {};
    let totalPenjualan = 0;

    salesData.forEach(transaksi => {
      const cabangName = transaksi.User.Cabang.namacabang;
      const kasirName = transaksi.User.username;
      
      if (!salesSummary[cabangName]) {
        salesSummary[cabangName] = {
          totalPenjualanCabang: 0,
          metodePembayaran: { qris: 0, cash: 0 },
          kasir: {},
          barang: {}
        };
      }

      // Update total penjualan
      salesSummary[cabangName].totalPenjualanCabang += Number(transaksi.totaljual);
      totalPenjualan += Number(transaksi.totaljual);

      // Update metode pembayaran
      salesSummary[cabangName].metodePembayaran[transaksi.pembayaran]++;

      // Update kasir statistics
      if (!salesSummary[cabangName].kasir[kasirName]) {
        salesSummary[cabangName].kasir[kasirName] = {
          totalTransaksi: 0,
          totalPenjualan: 0
        };
      }
      salesSummary[cabangName].kasir[kasirName].totalTransaksi++;
      salesSummary[cabangName].kasir[kasirName].totalPenjualan += Number(transaksi.totaljual);

      // Update product statistics
      transaksi.TransaksiDetails.forEach(detail => {
        const barangName = detail.Barang.namabarang;
        if (!salesSummary[cabangName].barang[barangName]) {
          salesSummary[cabangName].barang[barangName] = {
            totalTerjual: 0,
            totalPenjualan: 0
          };
        }
        salesSummary[cabangName].barang[barangName].totalTerjual += detail.jumlahbarang;
        salesSummary[cabangName].barang[barangName].totalPenjualan += Number(detail.total);
      });
    });

    return res.status(200).json({
      status: true,
      data: {
        totalPenjualanKeseluruhan: totalPenjualan,
        detailPenjualan: salesSummary
      }
    });

  } catch (error) {
    console.error('Error in getSalesReport:', error);
    return res.status(500).json({
      status: false,
      message: "Internal server error",
      error: error.message
    });
  }
};