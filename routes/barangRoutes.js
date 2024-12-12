const express = require('express')
const {getBarang,getBarangByUuid, createBarang, updateBarang, deleteBarang} = require('../controller/barangController')
const {verifyUser, adminOnly,superAdminOnly} = require('../middleware/userMiddleware')

const router = express.Router()

router.get('/barang',verifyUser ,getBarang)
router.get('/barang/:uuid',verifyUser ,getBarangByUuid)
router.post('/createbarang', verifyUser,adminOnly, createBarang);
router.put('/updatebarang/:uuid',verifyUser,adminOnly ,updateBarang)
router.delete('/deletebarang/:uuid',adminOnly ,deleteBarang)

module.exports = router