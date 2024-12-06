const express = require('express');
const router = express.Router();
const laporanController = require('../controller/laporanController');
const {verifyUser, adminOnly} = require('../middleware/userMiddleware')

router.get('/laporan',verifyUser, adminOnly, laporanController.laporan);

module.exports = router;
