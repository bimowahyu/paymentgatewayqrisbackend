const { Sequelize } = require('sequelize');

const db = new Sequelize('kasirjsbaru', 'root', '', {
  host: 'localhost',
  dialect: 'mysql',
  timezone: '+07:00',
  logging: console.log,
});

module.exports = db;

//db lama 'kasirkujs'

//deploy
// Hostname:
// localhost
// Database:
// brabsenm_kasir
// Username:
// brabsenm_kasir
// Password:
// E2NUUQGaZWkQPneWQhQ4