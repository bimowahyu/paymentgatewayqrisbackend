const Cabang = require('../models/cabangModel');

const getCabang = async(req,res) => {
    try {
        const response = await Cabang.findAll({
            attributes:['uuid','namacabang','alamat','koordinat','createdAt','updatedAt']
             })

             const calculateTotalCabang = (cabangData) => {
                return cabangData.length;
            };
            const totalCabang = calculateTotalCabang(response);

    res.status(200).json({
        status:200,
        message:'succes get data',
        totalcabang: totalCabang,
        data:response
    })
    } catch (error) {
        res.status(500).json(error.message)
    }
}

const getCabangByUuid = async(req,res) => {
    try {
        const {uuid} = req.params;
        const response = await Cabang.findOne({
            attributes:['uuid','namacabang','alamat','koordinat','createdAt'],
            where: {uuid}
        })
        res.status(200).json({
            status:200,
            message:'succes get data',
            data:response
        })
    } catch (error) {
        res.status(500).json(error.message)
    }
}

const createCabang = async (req,res) => {
    try {
        const { namacabang, alamat, latitude, longitude } = req.body
        if(!namacabang || !alamat || !latitude || !longitude){
            return res.status(400).json({message: "silahkan isi semua data"})
        }
        const createLokasi = `${latitude},${longitude}`
        const response = await Cabang.create({
            namacabang,
            alamat,
            koordinat: createLokasi
        })
        res.status(201).json({
            status:201,
            message:'succes create data',
            data:response
        })
    } catch (error) {
        res.status(500).json(error.message)
    }
}

const updateCabang = async (req,res) =>{
    try {
        const {uuid} = req.params;
        const {namacabang, alamat, latitude, longitude} = req.body
        const cabang = await Cabang.findOne({
            where: {uuid}
        })
        if(!cabang){
            return res.status(404).json({message: "data tidak ditemukan"})
        }
        const createLokasi = `${latitude},${longitude}`
        let updatedFields = {};
        if(namacabang)updatedFields.namacabang = namacabang;
        if(alamat)updatedFields.alamat = alamat;
        // if(koordinat)updatedFields.koordinat = koordinat;
        if (latitude && longitude) updatedFields.koordinat = createLokasi;

        await Cabang.update(updatedFields, {where: {uuid}})
        res.status(200).json({
            status:200,
            message:"data berhasil di update"
        })
    } catch (error) {
        res.status(500).json(error.message)
    }
}

const deleteCabang = async(req,res) =>{
    try {
        const {uuid} = req.params
        const cabang = await Cabang.findOne({
            where: {uuid}
        })
        if(!cabang){
            return res.status(400).json('cabang tidak di temukan')
        }
        await Cabang.destroy({
            where:{
                uuid
            }
        })
        res.status(204).json({
            status:204,
            message: "data berhasil di hapus"
        })
    } catch (error) {
        res.status(500).json(error.message)
    }
}

module.exports = {
    getCabang,
    getCabangByUuid,
    createCabang,
    updateCabang,
    deleteCabang
}