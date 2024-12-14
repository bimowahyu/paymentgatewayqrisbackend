require('dotenv').config();
const midtransClient = require("midtrans-client");


const snap = new midtransClient.Snap({
  isProduction: true, // Ubah ke true jika production

  //testing key
  // serverKey: process.env.SERVERKEY,
  // clientKey: process.env.CLIENTKEY,
  //prod
  //serverKey: process.env.SERVERKEYPROD,
  //clientKey: process.env.CLIENTKEYPROD
});

const coreApi = new midtransClient.CoreApi({
  isProduction: false,
  serverKey: process.env.SERVERKEY,
 clientKey: process.env.CLIENTKEY,
  //prod
  //  serverKey: process.env.SERVERKEYPROD,
  //  clientKey: process.env.CLIENTKEYPROD
});


module.exports = {snap, coreApi}