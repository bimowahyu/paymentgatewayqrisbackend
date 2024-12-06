const express = require('express')
const {
    getKategori,
    getKategoriByUuid,
    createKategori,
    updateKategori,
    deleteKategori
} = require('../controller/kategoriController')
const {verifyUser, adminOnly} = require('../middleware/userMiddleware')

const router = express.Router();
router.get('/kategori',verifyUser, getKategori);
router.get('/kategori/:uuid',verifyUser, getKategoriByUuid);
router.post('/createkategori',adminOnly, createKategori);
router.put('/updatekategori/:uuid',adminOnly, updateKategori);
router.delete('/deletekategori/:uuid',adminOnly, deleteKategori);
module.exports = router;
