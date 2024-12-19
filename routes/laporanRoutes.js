const express = require('express');
const router = express.Router();
const {laporan, chartLaporan, laporandetail} = require('../controller/laporanController')
const {verifyUser, adminOnly} = require('../middleware/userMiddleware')

router.get('/laporan',verifyUser, laporan);
router.get('/chartLaporan',verifyUser, chartLaporan);
router.get('/laporandetail',verifyUser, laporandetail);

module.exports = router;
