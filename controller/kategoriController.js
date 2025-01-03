const Kategori = require('../models/kategoriModel')
const Barang = require('../models/barangModel')

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

const updateKategori = async (req, res) => {
    try {
        const { uuid } = req.params;
        const { namakategori } = req.body;

        const kategori = await Kategori.findOne({
            where: { uuid },
        });
        if (!kategori) {
            return res.status(404).json({ message: 'Data tidak ditemukan' });
        }

        await Kategori.update(
            { namakategori },
            { where: { uuid } }
        );

        res.status(200).json({
            status: 200,
            message: 'Berhasil memperbarui data',
        });
    } catch (error) {
        res.status(500).json(error.message);
    }
};


const deleteKategori = async (req, res) => {
    try {
        const { uuid } = req.params;

        await Barang.update(
            { kategoriuuid: null },
            { where: { kategoriuuid: uuid } }
        );

        const kategori = await Kategori.findOne({ where: { uuid } });
        if (!kategori) {
            return res.status(404).json({ message: 'Data tidak ditemukan' });
        }

        await Kategori.destroy({ where: { uuid } });

        res.status(200).json({
            status: 200,
            message: 'Berhasil menghapus data',
        });
    } catch (error) {
        res.status(500).json(error.message);
    }
};


module.exports ={
    getKategori,
    getKategoriByUuid,
    createKategori,
    updateKategori,
    deleteKategori
}