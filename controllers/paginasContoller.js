//import de Modelos
import Viaje from '../models/Viaje.js'
import Testimonial from '../models/Testimonial'

//controlador para pagina de inicio
const paginaInicio = (req, res) => {
    try{
        res.render("inicio", {
            pagina: 'Inicio',
            clase: 'home'
        });
    }
    catch(error){
    console.log(error)
}

//controlador para pagina de viajes
const paginaViajes = async (req, res) => {
    const viajes = await Viaje.findAll(); 
        .catch((error) => console.log(error));
        
    res.render("viajes", {
        pagina: "Viajes",
        viajes: viajes
    });
} 

//pagina para control de viajes
const paginaDetalleViaje = async(req, res) => {
    const {slug} = req.params;
    
    try{
        const resultado = await Viaje.findOne({where: {slug: slug}});

        res.render('infoViaje', {
            pagina: 'Informacion de Viaje',
            resultado: resultado
        });
    }catch(error){
        console.log(error);
    }
}
    

const paginaNosotros = (req, res) => {
    res.render("nosotros", {
        pagina: 'Nosotros'
    });
}

const paginaTestimoniales = async(req, res) => {
    const testimoniales = await Testimonial.findAll({limit: 3}); //Select
    res.render("testimoniales", {
        pagina: 'Testimoiniales',
        testimoniales
    });
}


export {paginaInicio,
    paginaViajes,
    paginaNosotros,
    paginaTestimoniales,
    paginaDetalleViaje}

