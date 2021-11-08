//funcion para escribir testimonial
import Testimonial FROM 
export const saveTestimonial = (req, res) => {
    //console.log(req);
    const {nombre, correo, mensaje} = req.body;
    console.log(`Nombre: ${nombre}, Correo: ${correo}, Mensaje: ${mensaje}`);

    const errores = [];

    if(nombre.trim() ===''){
        errores.push({mensaje: 'El nombre esta vacío'});
    }

    if(correo.trim() ===''){
        errores.push({mensaje: 'El correo esta vacío'});
    }

    if(mensaje.trim() ===''){
        errores.push({mensaje: 'El mensaje esta vacío'});
    }

    //render de pagina testimoniales
    if(errores.length > 0){
        const testimoniales = await.findAll({limit: 3}); //Select * FROM testimoniales
        res.render('testimoniales', {
            pagina: 'Testimoniales',
            errores,
            testimoniales
        });
    } else {
        try{
            await Testimonial.create({nombre, correo, mensaje}); //insert into test
            res.redirect('testimoniales')
        }catch(error){
            console.log(error);
        }

    }
}

export{
    saveTestimonial
}
