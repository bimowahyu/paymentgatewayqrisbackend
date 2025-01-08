const { Sequelize } = require('sequelize');

const db = new Sequelize('kasirjsbaru', 'root', '', {
  host: 'localhost',
  dialect: 'mysql',
  timezone: '+07:00',
  logging: console.log,
});

module.exports = db;

//db lama 'kasirkujs'
//supabasepassword K@s1r123454444333