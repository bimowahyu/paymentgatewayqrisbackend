const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');
const User = require('./userModel.js');
const Barang = require('./barangModel.js');

const Transaksi = sequelize.define('Transaksi', {
  uuid: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  barangUuid: {
    type: DataTypes.UUID,
    allowNull: true,
  },
  order_id: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  totaljual: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: false,
  },
  useruuid: {
    type: DataTypes.UUID,
    allowNull: false,
  },
  tanggal: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
    allowNull: false,
  },
  status_pembayaran:{
    type: DataTypes.ENUM('pending', 'settlement', 'capture', 'deny', 'cancel', 'expire'),
    allowNull: true
  },
  pembayaran: {
    type: DataTypes.ENUM('qris', 'cash'),
    allowNull: false,
  },
}, {
  timestamps: true,
  tableName: 'transaksis',
});

// Relasi dengan User
Transaksi.belongsTo(User, { foreignKey: 'useruuid' });
User.hasMany(Transaksi, { foreignKey: 'useruuid' });

// Relasi dengan Barang
Transaksi.belongsTo(Barang, { foreignKey: 'barangUuid' });
Barang.hasMany(Transaksi, { foreignKey: 'barangUuid' });

module.exports = Transaksi;
