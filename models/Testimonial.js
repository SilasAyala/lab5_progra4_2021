import Sequelize from "Sequelize";
import db from '../config/db.js';

//definimos el modelo para testimoniales
const Viaje = db.define('viajes', {
    nombre: {type: Sequelize.STRING},
    correo: {type: Sequelize.STRING},
    mensaje: {type: Sequelize.STRING}
    
});

export default Testimonial;