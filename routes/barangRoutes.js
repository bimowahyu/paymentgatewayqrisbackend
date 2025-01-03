const express = require('express')
const {getBarang,getBarangByUuid,
     createBarang,
      updateBarang,
       deleteBarang,
       getBarangCabang,
       addBarangToCabang,
       updateBarangCabang,
       deleteBarangFromCabang,
       getBarangCabangAdmin,
       getBarangCabangByRole,
    getCabangByRole
    } = require('../controller/barangController')
const { verifyUser, adminOnly, superAdminOnly}  = require('../middleware/userMiddleware')

const router = express.Router()

//-----set barangcabang
router.get('/barangcabangbyrole', verifyUser, getBarangCabangByRole);
router.get('/cabangbyrole', verifyUser, getCabangByRole);
router.get('/barangcabangadmin',verifyUser ,getBarangCabangAdmin)
router.get('/barangcabang',verifyUser ,getBarangCabang)
router.get('/barangcabang/:uuid',verifyUser ,getBarangCabang)
router.post('/createbarangcabang', addBarangToCabang);
router.put('/updatebarangcabang/:uuid',verifyUser,adminOnly ,updateBarangCabang)
router.delete('/deletebarangcabang/:uuid',verifyUser,adminOnly ,deleteBarangFromCabang)
//route barang crud
router.get('/barang',verifyUser ,getBarang)
router.get('/barang/:uuid',verifyUser ,getBarangByUuid)
router.post('/createbarang', verifyUser,adminOnly, createBarang);
router.put('/updatebarang/:uuid',verifyUser,adminOnly ,updateBarang)
router.delete('/deletebarang/:uuid',verifyUser,adminOnly ,deleteBarang)

module.exports = router