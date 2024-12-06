const midtransClient = require("midtrans-client");


const snap = new midtransClient.Snap({
  isProduction: false, // Ubah ke true jika production

  //testing key
  serverKey: "SB-Mid-server-uQ-rqRytL5AJcWTQFfrjWQ_l",
  clientKey: "SB-Mid-client-z33ZOawCRIExlzNZ",
  //prod
 
});

const coreApi = new midtransClient.CoreApi({
  isProduction: false,
  serverKey: "SB-Mid-server-uQ-rqRytL5AJcWTQFfrjWQ_l",
  clientKey: "SB-Mid-client-z33ZOawCRIExlzNZ",
});


module.exports = {snap, coreApi}