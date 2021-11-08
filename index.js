import express from 'express';
import router from './routes/routes.js';
import db from './config/db.js';

const app = express();
const port = process.env.PORT || 5500;

//npm run dev

//middleware para habilitar

//asignamos router/routers.js
app.use('/', router);

//conexcion a la base de datos
db.authenticate()
    .then(() => console.log("Conectado a la base de datos"))
    .catch((error)=>console.log(error))

//habilitamos el html engine
app.set('view engine', 'pug');

//middleware para llamar a los recursos publicos
app.use(express.static('public'));

//middleware .valores actuales
app.use((req, res, next) => {
    const currentDate = new Date();
    res.locals.currentYear = currentDate.getFullYear();
    res.locals.siteName = 'Agencia de Viajes';
    return next();
});


//middleware para llamar a recursos publicos
app.use(express.static('public'));

app.listen(port,  ( )=> {
    console.log(`El servidor esta funcionando en el puerto ${port}.`);
});
//sequelize.org

//middleware para habilitar envio de datos desde el cliente al server
app.use(express.urlencoded({extended = true}));
