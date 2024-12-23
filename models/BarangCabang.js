const Sequelize = require('sequelize');
const db = require('../config/database.js');
const Barang = require('./barangModel.js'); // Mengimpor model Barang
const Cabang = require('./cabangModel.js'); // Mengimpor model Cabang
const { DataTypes } = Sequelize;

const BarangCabang = db.define('BarangCabang', {
  uuid: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  baranguuid: {
    type: DataTypes.UUID,
    allowNull: false,
    references: {
      model: 'barangs', // Mengacu pada model Barang
      key: 'uuid',
    }
  },
  cabanguuid: {
    type: DataTypes.UUID,
    allowNull: false,
    references: {
      model: 'cabangs', // Mengacu pada model Cabang
      key: 'uuid',
    }
  }
}
);

// Relasi Many-to-Many antara Barang dan Cabang melalui model BarangCabang
Barang.belongsToMany(Cabang, { through: BarangCabang, foreignKey: 'baranguuid' });
Cabang.belongsToMany(Barang, { through: BarangCabang, foreignKey: 'cabanguuid' });

module.exports = BarangCabang;
