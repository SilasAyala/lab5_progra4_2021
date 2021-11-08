CREATE DATABASE agenciaViajes;

USE agenciaViajes;

DROP TABLE IF EXISTS viajes;

CREATE TABLE viajes(
    id INT PRIMARY  KEY  AUTO_INCREMENT,
    titulo VARCHAR(20),
    precio DECIMAL(7, 2),
    fecha_salida DATE,
    fecha_regreso DATE,
    imagen VARCHAR(20),
    descripcion TEXT,
    disponibles INT,
    slug VARCHAR (30)
);

INSERT INTO viajes(titulo, precio, fecha_salida, fecha_regreso, imagen, descripcion, disponibles, slug)
    VALUES ('Italia', 55000, '2021-01-06', '2021-01-15', 'roma',
        'Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa',
        32, 'viaje-italia');

INSERT INTO viajes(titulo, precio, fecha_salida, fecha_regreso, imagen, descripcion, disponibles, slug)
    VALUES ('Grecia', 75000, '2021-02-10', '2021-02-20', 'grecia',
        'Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa',
        20, 'viaje-grecia');

INSERT INTO viajes(titulo, precio, fecha_salida, fecha_regreso, imagen, descripcion, disponibles, slug)
    VALUES ('Canada', 20000, '2021-03-06', '2021-03-15', 'canada',
        'Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa',
        12, 'viaje-canada');

INSERT INTO viajes(titulo, precio, fecha_salida, fecha_regreso, imagen, descripcion, disponibles, slug)
    VALUES ('Inglaterra', 35000, '2021-04-11', '2021-04-20', 'londres',
        'Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa',
        15, 'viaje-inglaterra');

INSERT INTO viajes(titulo, precio, fecha_salida, fecha_regreso, imagen, descripcion, disponibles, slug)
    VALUES ('Guatemala', 20000, '2021-09-12', '2021-09-20', 'tikal',
        'Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa
        Lorem ipsum dolor asdfasdfasdfasdfadfadfadfasdfadfasdfasdfasdfasdfasdfasdfadfasdfasdfa',
        12, 'viaje-guatemala');
SELECT * FROM viajes;

CREATE TABLE IF NOT EXISTS testimoniales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60),
    correo VARCHAR(60),
    mensaje TEXT
);

#Inserts
INSERT INTO testimoniales(nombre, correo, mensaje)
    VALUES ('Preng', 'preng@galileo.edu', ' Muy bonito el lugar, me encanto la comida');

INSERT INTO testimoniales(nombre, correo, mensaje)
    VALUES ('Jose', 'jose@galileo.edu', ' Buena atencion');

INSERT INTO testimoniales(nombre, correo, mensaje)
    VALUES ('David', 'david@galileo.edu', ' Que gradable sujeto');

SELECT * FROM testimoniales;