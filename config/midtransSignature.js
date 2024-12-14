require('dotenv').config();
const crypto = require('crypto');
const Transaksi = require('../models/transaksiModel');
const { Op } = require('sequelize');

exports.verifyMidtransSignature = (req, res, next) => {
  try {
    //testing key
    const serverKey = process.env.SERVERKEY;
   //prod
   // const serverKey = process.env.SERVERKEYPROD;
    if (!serverKey) {
      console.error('MIDTRANS_SERVER_KEY belum diatur dalam environment');
      return res.status(500).json({
        status: false,
        message: 'Kunci server Midtrans tidak ditemukan'
      });
    }

    const {
      signature_key,
      order_id,
      status_code,
      gross_amount
    } = req.body;

    if (!signature_key || !order_id || !status_code || !gross_amount) {
      console.error('Parameter notifikasi tidak lengkap:', req.body);
      return res.status(400).json({
        status: false,
        message: 'Parameter tidak lengkap'
      });
    }

    const formattedGrossAmount = gross_amount;
    const hashString = `${order_id}${status_code}${formattedGrossAmount}${serverKey}`;
    const generatedSignature = crypto
      .createHash('sha512')
      .update(hashString)
      .digest('hex');

    console.log('Notification Data:', {
      order_id,
      status_code,
      gross_amount: formattedGrossAmount
    });

    if (generatedSignature === signature_key) {
      console.log('Signature valid!');
      next();
    } else {
      console.error('Signature tidak valid');
      return res.status(403).json({
        status: false,
        message: 'Signature tidak valid'
      });
    }
  } catch (error) {
    console.error('Error verifying signature:', error);
    return res.status(500).json({
      status: false,
      message: 'Terjadi kesalahan pada verifikasi signature'
    });
  }
};
//bisa tes url;
// exports.midtransNotification = async (req, res) => {
//   try {
//     const {
//       order_id,
//       transaction_status,
//       fraud_status,
//       transaction_time,
//       settlement_time,
//       payment_type
//     } = req.body;

//     // Handle test notifications
//     if (order_id.startsWith('payment_notif_test_')) {
//       console.log('Received test notification from Midtrans');
//       return res.status(200).json({
//         status: true,
//         message: 'Test notification received successfully'
//       });
//     }

//     
//     let transaksi = await Transaksi.findOne({
//       where: { uuid: order_id }
//     });

//     // Jika tidak ditemukan, coba cari dengan trim prefix jika ada
//     if (!transaksi && order_id.includes('_')) {
//       const alternativeId = order_id.split('_').pop();
//       transaksi = await Transaksi.findOne({
//         where: { uuid: alternativeId }
//       });
//     }

//     if (!transaksi) {
//       console.error(`Transaksi dengan order_id ${order_id} tidak ditemukan`);
//       return res.status(404).json({
//         status: false,
//         message: 'Transaksi tidak ditemukan'
//       });
//     }

//   
//     let status = transaction_status;
//     if (transaction_status === 'capture') {
//       status = fraud_status === 'accept' ? 'settlement' : 'deny';
//     }

//    
//     await transaksi.update({
//       status_pembayaran: status,
//       pembayaran: payment_type === 'qris' ? 'qris' : transaksi.pembayaran,
//       updatedAt: settlement_time || transaction_time || new Date()
//     });

//     console.log(`Transaksi ${order_id} berhasil diupdate ke status: ${status}`);
    
//     return res.status(200).json({
//       status: true,
//       message: 'Notifikasi berhasil diproses'
//     });

//   } catch (error) {
//     console.error('Error processing notification:', error);
//     return res.status(500).json({
//       status: false,
//       message: 'Internal Server Error'
//     });
//   }
// };

// exports.midtransNotification = async (req, res) => {
//     try {
//       const notification = req.body;
  
//       // Data notifikasi dari Midtrans
//       const { order_id, transaction_status, fraud_status } = notification;
  
//       // Cari transaksi berdasarkan order_id
//       const transaksi = await Transaksi.findOne({ where: { order_id } });
  
//       if (!transaksi) {
//         console.error(`Transaksi dengan order_id ${order_id} tidak ditemukan.`);
//         return res.status(404).json({ status: false, message: "Transaksi tidak ditemukan" });
//       }
  
//       // Tentukan status pembayaran berdasarkan notifikasi Midtrans
//       let status = "pending";
//       if (transaction_status === "capture") {
//         status = fraud_status === "accept" ? "settlement" : "deny";
//       } else if (transaction_status === "settlement") {
//         status = "settlement";
//       } else if (transaction_status === "deny") {
//         status = "deny";
//       } else if (transaction_status === "cancel" || transaction_status === "expire") {
//         status = "cancel";
//       }
  
//      
//       await transaksi.update({ status_pembayaran: status });
  
//       console.log(`Order ${order_id} updated to status: ${status}`);
//       return res.status(200).json({ status: true, message: "Notifikasi berhasil diproses" });
//     } catch (error) {
//       console.error("Error processing notification:", error.message);
//       return res.status(500).json({ status: false, message: "Internal Server Error" });
//     }
//   };

exports.midtransNotification = async (req, res) => {
  try {
    const {
      order_id,
      transaction_status,
      fraud_status,
      transaction_time,
      settlement_time,
      payment_type
    } = req.body;

    // ------------Handle test notifications---------------------
    if (order_id && order_id.startsWith('payment_notif_test_')) {
      console.log('Received test notification from Midtrans');
      return res.status(200).json({
        status: true,
        message: 'Test notification received successfully'
      });
    }
    let transaksi = await Transaksi.findOne({
      where: { 
        [Op.or]: [
          { uuid: order_id },
          { order_id: order_id }
        ]
      }
    });

    if (!transaksi && order_id && order_id.includes('_')) {
      const alternativeId = order_id.split('_').pop();
      transaksi = await Transaksi.findOne({
        where: { 
          [Op.or]: [
            { uuid: alternativeId },
            { order_id: alternativeId }
          ]
        }
      });
    }

    if (!transaksi) {
      console.error(`Transaksi dengan order_id ${order_id} tidak ditemukan`);
      return res.status(404).json({
        status: false,
        message: 'Transaksi tidak ditemukan'
      });
    }


    let status = "pending";
    if (transaction_status === "capture") {
      status = fraud_status === "accept" ? "settlement" : "deny";
    } else if (transaction_status === "settlement") {
      status = "settlement";
    } else if (transaction_status === "deny") {
      status = "deny";
    } else if (transaction_status === "cancel" || transaction_status === "expire") {
      status = "cancel";
    } else {
      status = transaction_status; 
    }

   
    await transaksi.update({
      status_pembayaran: status,
      pembayaran: payment_type === 'qris' ? 'qris' : transaksi.pembayaran,
      updatedAt: settlement_time || transaction_time || new Date()
    });

    console.log(`Transaksi ${order_id} berhasil diupdate ke status: ${status}`);
    
    return res.status(200).json({
      status: true,
      message: 'Notifikasi berhasil diproses'
    });

  } catch (error) {
    console.error('Error processing notification:', error);
    return res.status(500).json({
      status: false,
      message: 'Internal Server Error'
    });
  }
};