const express = require('express')
const{getTransaksi,
    getTransaksiByUuid,
    getTransaksiCabang,
    getTransaksiByUser,
    rekapHarianUser,
    createTransaksi,
    updateTransaksi,
    deleteTransaksi
     
} = require('../controller/transaksiController')
const { verifyUser, adminOnly } = require('../middleware/userMiddleware')
const { verifyMidtransSignature , midtransNotification} = require ('../config/midtransSignature')
//const { midtransNotification } = require('../config/midtransNotification')

const router = express.Router()

router.get('/gettransaksi',verifyUser,getTransaksi)
router.get('/gettransaksicabang',adminOnly,getTransaksiCabang)
router.get('/gettransaksiuser',verifyUser,getTransaksiByUser)
router.get('/transaksi/:uuid',getTransaksiByUuid)
router.get('/rekapharianuser/:tanggal?',verifyUser, rekapHarianUser)
router.post('/createtransaksi',verifyUser,createTransaksi)
router.post('/midtrans-notification', verifyMidtransSignature, midtransNotification);
router.put('/updatetransaksi/:uuid',verifyUser,updateTransaksi)
router.delete('/deletetransaksi/:uuid',adminOnly,deleteTransaksi)

module.exports = router;