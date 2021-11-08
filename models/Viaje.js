import Sequelize from "Sequelize";
import db from '../config/db.js';

//definimos el modelo para viajes
const Viaje = db.define('viajes', {
    titulo: {type: Sequelize.STRING},
    precio: {type: Sequelize.NUMBER},
    fecha_salida :{type: Sequelize.DATE},
    fecha_regreso :{type: Sequelize.DATE},
    imagen: {type: Sequelize.STRING},
    descripcion: {type: Sequelize.TEXT},
    disponibles: {type: Sequelize.INTEGER},
    slug: {type: Sequelize.STRING}
});

export default Viaje;