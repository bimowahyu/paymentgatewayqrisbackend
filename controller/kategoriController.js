const Kategori = require('../models/kategoriModel')

const getKategori = async(req,res) => {
    try {
        const response = await Kategori.findAll({
            attributes:['uuid','namakategori','createdAt','updatedAt']
        })
        res.status(200).json({
            status: 200,
            message:'success',
            data: response
        })
    } catch (error) {
        res.status(500).json(error.message)
    }
}

const getKategoriByUuid = async (req,res) => {
    try {
        const {uuid} = req.params;
        const response = await Kategori.findOne({
            where: {
                uuid
            },
            attributes:['uuid','namakategori','createdAt','updatedAt']
        })
        if(!response){
            return res.status(404).json({message:"Data tidak ti temukan"})
        }
        res.status(200).json({
            status: 200,
            message:'success',
            data: response
        })
        
    } catch (error) {
        res.status(500).json(error.message)
    }
}

const createKategori = async (req,res) => {
    try {
        const {namakategori} = req.body;
        if(!namakategori){
            return res.status(400).json({message:"Nama kategori tidak boleh kosong"})
        }
        const response = await Kategori.create({
            namakategori
        })
        res.status(201).json({
            status: 201,
            message:'success',
            data: response
        })
    } catch (error) {
        res.status(500).json(error.message)
    }
}

const updateKategori = async (req,res) => {
    try {
        const{uuid} = req.params;
        const kategori = await Kategori.findOne({
            where:{
                uuid
            }
        })
        if(!kategori){
            res.status(404).json({message:'Data tidak di temukan'})
        }
        let updatedFields = []
        if(namakategori)updatedFields.namakategori = namakategori
        await Kategori.update(
            updatedFields,{where: {
                uuid
            }}
        )
        res.status(200).json({
            status:200,
            message:'succes updated data'
        })
    } catch (error) {
        res.status(500).json(error.message)
    }
}

const deleteKategori = async (req,res) => {
    try {
        const {uuid} = req.params
        const kategori = await Kategori.findOne({
            where:{
                uuid
            }
        })
        if(!kategori){
            res.status(404).json('Data tidak ditemukan')
        }
        await Kategori.destroy({
            where:{
                uuid
            }
        })
        res.status(200).json({
            status:200,
            message:'succes delete data'
        })
    } catch (error) {
        res.status(500).json(error.message)
    }
}

module.exports ={
    getKategori,
    getKategoriByUuid,
    createKategori,
    updateKategori,
    deleteKategori
}