import express from "express";

//importamos controladores
import {paginaInicio, paginaViajes, paginaNosotros, paginaTestimoniales, 
        paginaDetalleViaje} from '../controllers/paginasContoller.js';

import {saveTestimonial} from '../controllers/paginasContoller.js';

//objeto ruteador
const router = express.Router();

//ruta para pagina index (default)
router.get('/', paginaInicio);



//Ruta para pagina de contacto
router.get('/nosotros', paginaNosotros);

//ruta para viajes
router.get('/viajes', paginaViajes);

//ruta para testimoniales
router.get('/testimoniales', paginaTestimoniales);

//RUTA PARA detalleViaje
router.get('/viajes/:slug', paginaDetalleViaje);

//ruta para postear testimonial
router.post('/testimoniales', saveTestimonial);

export default router;