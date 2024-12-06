const Barang = require('../models/barangModel');
const Kategori = require('../models/kategoriModel')
const { writeFile, unlink } = require('fs').promises;
const fs = require('fs');
const path = require('path');



const getBarang = async(req,res)=>{
    try {
        const response = await Barang.findAll({
            attributes:['uuid','namabarang','harga','foto','kategoriuuid','createdAt'],
            include: { 
                model: Kategori,
                attributes:['namakategori']
                }
        })
        res.status(200).json({
            status: 200,
            message: 'succes',
            data: response
        })  
    } catch (error) {
        res.status(500).json(error.message)
    }
}

const getBarangByUuid = async(req,res) => {
    const { uuid } = req.params
    try {
        const response = await Barang.findOne({
            where: { uuid },
            include: { 
            model: Kategori,
            attributes:['namakategori']
            }
        })
        res.status(200).json({
            status:200,
            message:'succes',
            data: response
        })
    } catch (error) {
        res.status(500).json(error.message)
    }
}

const createBarang = async (req, res) => {
    try {
        if (!req.files || Object.keys(req.files).length === 0) {
            return res.status(400).json({ msg: "No File Uploaded" });
        }

        const { namabarang, harga, kategoriuuid } = req.body;
        const file = req.files.file; 
        if (!file) {
            return res.status(400).json({ msg: "No File Uploaded" });
        }

        if (!namabarang || !harga || !kategoriuuid) {
            return res.status(400).json({ message: "Data tidak lengkap" });
        }
        const kategori = await Kategori.findOne({ where: { uuid: kategoriuuid } });
        if (!kategori) {
            return res.status(400).json({ message: "Kategori tidak ditemukan" });
        }
        const fileSize = file.data.length;
        const ext = path.extname(file.name).toLowerCase();
        const fileName = `${namabarang}-${Date.now()}${ext}`;
        const allowedType = ['.png', '.jpg', '.jpeg'];

        if (!allowedType.includes(ext)) {
            return res.status(422).json({ msg: "Invalid file type. Allowed: .png, .jpg, .jpeg" });
        }

        if (fileSize > 5000000) {
            return res.status(422).json({ msg: "File size must be less than 5 MB" });
        }
        const uploadPath = path.join(__dirname, '../public/uploads');
        const filePath = path.join(uploadPath, fileName);
        if (!fs.existsSync(uploadPath)) {
            fs.mkdirSync(uploadPath, { recursive: true });
        }
        file.mv(filePath, async (err) => {
            if (err) {
                console.error(err);
                return res.status(500).json({ msg: "Failed to upload file" });
            }

            const barang = await Barang.create({
                namabarang,
                harga,
                kategoriuuid,
                foto: fileName, 
            });

            res.status(201).json({
                status: 201,
                message: 'success',
                data: barang,
            });
        });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: "Terjadi kesalahan server", error: error.message });
    }
};

const updateBarang = async (req, res) => {
    try {
        const { uuid } = req.params; 
        const { namabarang, harga, kategoriuuid } = req.body; 
        const file = req.files ? req.files.file : null; 
        const barang = await Barang.findOne({ where: { uuid } });
        if (!barang) {
            return res.status(404).json({ message: "Barang tidak ditemukan" });
        }
        if (kategoriuuid) {
            const kategori = await Kategori.findOne({ where: { uuid: kategoriuuid } });
            if (!kategori) {
                return res.status(400).json({ message: "Kategori tidak ditemukan" });
            }
        }

        let updatedFields = {
            namabarang: namabarang || barang.namabarang,
            harga: harga || barang.harga,
            kategoriuuid: kategoriuuid || barang.kategoriuuid,
        };
        if (file) {
            const fileSize = file.data.length;
            const ext = path.extname(file.name).toLowerCase();
            const fileName = `${namabarang || barang.namabarang}-${Date.now()}${ext}`;
            const allowedType = ['.png', '.jpg', '.jpeg'];
            if (!allowedType.includes(ext)) {
                return res.status(422).json({ msg: "Invalid file type. Allowed: .png, .jpg, .jpeg" });
            }
            if (fileSize > 5000000) {
                return res.status(422).json({ msg: "File size must be less than 5 MB" });
            }

            const uploadPath = path.join(__dirname, '../public/uploads');
            const filePath = path.join(uploadPath, fileName);
            if (!fs.existsSync(uploadPath)) {
                fs.mkdirSync(uploadPath, { recursive: true });
            }
            if (barang.foto) {
                const oldFilePath = path.join(uploadPath, barang.foto);
                if (fs.existsSync(oldFilePath)) {
                    fs.unlinkSync(oldFilePath);
                }
            }
            file.mv(filePath, (err) => {
                if (err) {
                    console.error(err);
                    return res.status(500).json({ msg: "Failed to upload new file" });
                }
            });
            updatedFields.foto = fileName;
        }
        await Barang.update(updatedFields, { where: { uuid } });

        res.status(200).json({
            status: 200,
            message: "Data berhasil diperbarui",
            data: updatedFields,
        });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: "Terjadi kesalahan server", error: error.message });
    }
};

const deleteBarang = async (req, res) => {
    try {
        const { uuid } = req.params;
        const barang = await Barang.findOne({ where: { uuid } });
        if (!barang) {
            return res.status(404).json({ message: 'Barang tidak ditemukan' });
        }
        if (barang.foto) {
            await unlink(`public/uploads/${barang.foto}`);
        }
        await Barang.destroy({ where: { uuid } });
        // res.status(200).json({ message: "Barang berhasil dihapus" });
        res.status(204).json({
            status:204,
            message:'succes deleted data'
        })
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: "Terjadi kesalahan server", error: error.message });
    }
};


module.exports = {
    getBarang,
    getBarangByUuid,
    createBarang,
    updateBarang,
    deleteBarang
    
}