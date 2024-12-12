const Sequelize = require ('sequelize')
const db = require('../config/database')

const {DataTypes} = Sequelize

const Table = db.define('Table', {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    location: {
      type: DataTypes.STRING,
      allowNull: true,
    },
  });

module.exports = Table
