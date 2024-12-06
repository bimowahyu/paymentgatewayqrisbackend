const express = require('express')
const {
    getUser,
    getUserByUuid,
    createUser,
    updateUser,
    deleteUser
} = require('../controller/userController')


const router = express.Router()

router.get('/getuser',getUser)
router.get('/getuser/:uuid',getUserByUuid)
router.post('/createuser',createUser)
router.put('/updateuser/:uuid',updateUser)
router.delete('/deleteuser/:uuid',deleteUser)

module.exports = router