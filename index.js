const express = require('express')
const db = require('./config/database')
const moment = require('moment');
const bodyParser = require('body-parser');
const session = require('express-session');
const SequelizeStore = require('connect-session-sequelize')(session.Store);
const fileUpload = require('express-fileupload');
const cookieParser = require('cookie-parser');
const authRoutes = require('./routes/authRoutes')
const barangRoutes = require('./routes/barangRoutes')
const cabangRoutes = require('./routes/cabangRoutes')
const kategoriRoutes = require('./routes/kategoriRoutes')
const transaksiRoutes = require('./routes/transaksiRoutes')
const userRoutes = require('./routes/userRoutes')
const laporan = require('./routes/laporanRoutes')
const TIMEZONE = "Asia/Jakarta";
const cors = require('cors');
const path = require('path');


const app = express()

const SESS_SECRET = "qwertysaqdunasndjwnqnkndklawkdwk";

const store = new SequelizeStore({
    db: db
});

// (async() => {
//    await db.sync();
// })();
app.use(cors({
    origin: 'http://localhost:3000',
    methods: ['GET', 'POST'],
    allowedHeaders: ['Content-Type', 'Authorization'],
    credentials: true
}));
app.use(fileUpload());


app.use(bodyParser.json({ limit: '50mb' }));
app.use(bodyParser.urlencoded({ limit: '50mb', extended: true }));
app.use(cookieParser());

app.use((req, res, next) => {
    res.setHeader('Date', moment().tz(TIMEZONE).format('ddd, DD MMM YYYY HH:mm:ss [GMT+0700]'));
    next();
});

app.use(session({
    secret: SESS_SECRET,
    resave: false,
    saveUninitialized: true,
    store: store,
    cookie: {
        secure: false, // Untuk pengujian lokal, gunakan `false`
        httpOnly: true,
        sameSite: 'lax',
    }
}));
app.use(express.json({ limit: '10mb' }));
app.use(express.urlencoded({ extended: true, limit: '10mb' }));
app.use('/uploads', express.static('public/uploads'));

app.use(authRoutes)
app.use(barangRoutes)
app.use(cabangRoutes)
app.use(kategoriRoutes)
app.use(transaksiRoutes)
app.use(userRoutes)
app.use(laporan)

app.get('/', (req, res) => {
    res.send('berhasil');
});

// store.sync();

const port = 5000

app.listen(port,()=> {console.log('server')})