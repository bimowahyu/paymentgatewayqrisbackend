  const User = require('../models/userModel')
  const Cabang = require('../models/cabangModel')
  const argon2 = require('argon2');
const { where } = require('sequelize');

  exports.getUser = async (req,res) => {
    try {
        const response = await User.findAll({
            attributes: ['uuid','username','role','cabanguuid'],
            include: [{
                model: Cabang,
                attributes: ['uuid','namacabang']
            }]
        });
        
        res.status(200).json({
            status: 200,
            message: 'success',
            data: response
        });
    } catch (error) {
        res.status(500).json(error.message);
    }
  }

  exports.getUserByUuid = async (req,res) => {
      const {uuid} = req.params
      try {
          const user = await User.findOne({
              where:{
                  uuid
              },
              attributes:['uuid','username','role','cabanguuid'],
              include:[{
                  model:Cabang,
                  attributes:['uuid','namacabang']
          }]
          })
          if(!user){
              return res.status(404).json('user not found')
          }
          res.status(200).json({
              status:200,
              message:'succes',
              data:user
          })
      } catch (error) {
          res.status(500).json(error.message)
      }
  }


  exports.createUser = async (req, res) => {
    const { username, password, confpassword, role, cabanguuid } = req.body;

    try {

      if (password !== confpassword) {
        return res.status(400).json({ message: 'Password and confirm password do not match' });
      }

      if (!['superadmin', 'admin', 'kasir'].includes(role)) {
        return res.status(400).json({ message: 'Invalid role' });
      }
      let cabang;
      if (role !== 'superadmin') {
        if (!cabanguuid) {
          return res.status(400).json({ message: 'Cabang UUID is required for admin or user role' });
        }
        cabang = await Cabang.findOne({ where: { uuid: cabanguuid } });
        if (!cabang) {
          return res.status(404).json({ message: 'Cabang not found' });
        }
      }
      const hashedPassword = await argon2.hash(password);
      const newUser = await User.create({
        username,
        password: hashedPassword,
        role,
        cabanguuid: role === 'superadmin' ? null : cabanguuid,
      });

      res.status(201).json({ message: 'User created successfully', user: newUser });
    } catch (error) {
      console.error(error);
      res.status(500).json(error.message);
    }
  };


  exports.updateUser = async (req,res) => {
      try {
        const { uuid } = req.params
        const {username, password, confpassword, cabanguuid} = req.body
        const user = await User.findOne({
          where: { uuid },
        })
        if(!user){
          return res.status(404).json('user not found')
        }
        let updatedFields = {};
        if (username) updatedFields.username = username;

        if (password) {
            if (password !== confpassword) {
                return res.status(400).json({ message: 'Password and confirm password do not match' });
            }
            updatedFields.password = await argon2.hash(password);
        }
        if(cabanguuid)updatedFields.cabanguuid = cabanguuid;

        await User.update(
          updatedFields,{where: {uuid}}
        )
        return res.status(200).json({
          message: 'User updated successfully',
          status: 200,
          data: updatedFields
        })
          
      } catch (error) {
          return res.status(500).json(error.message)
      }
  }

  exports.deleteUser = async (req,res) => {
      try {
          const {uuid} = req.params;
          const user = await User.findOne({where: {uuid}})
          if(!user){
            return res.status(404).json('user not found')
          }
          await User.destroy({where: {uuid}});
          return res.status(200).json({
            message: 'User deleted successfully',
            status: 203
          })
      } catch (error) {
          return res.status(500).json(error.message)
      }
  }