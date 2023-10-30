CREATE DATABASE formulario_db;
USE formulario_db;

CREATE TABLE formulario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    carrera VARCHAR(255),
    nombre VARCHAR(255),
    apellidos VARCHAR(255),
    correo VARCHAR(255),
    asunto VARCHAR(255),
    fecha TIME,
    telefono VARCHAR(20),
    estado VARCHAR(255),
    nombre_estudiante VARCHAR(255),
    apellido_estudiante VARCHAR(255),
    seccion VARCHAR(255)
);
