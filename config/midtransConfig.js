const midtransClient = require("midtrans-client");


const snap = new midtransClient.Snap({
  isProduction: false, // Ubah ke true jika production

  //testing key
  serverKey: "SB-Mid-server-uQ-rqRytL5AJcWTQFfrjWQ_l",
  clientKey: "SB-Mid-client-z33ZOawCRIExlzNZ",
  //prod
  // serverKey: "Mid-server-zVqco_ZtohAk3FIhaMCdXZbz",
  // clientKey: "Mid-client-Kc3eY1dYY7YoVrMX"
});

const coreApi = new midtransClient.CoreApi({
  isProduction: true,
  //serverKey: "SB-Mid-server-uQ-rqRytL5AJcWTQFfrjWQ_l",
//  clientKey: "SB-Mid-client-z33ZOawCRIExlzNZ",
  //prod
   serverKey: "Mid-server-zVqco_ZtohAk3FIhaMCdXZbz",
   clientKey: "Mid-client-Kc3eY1dYY7YoVrMX"
});


module.exports = {snap, coreApi}