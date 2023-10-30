DROP DATABASE IF EXISTS colegio_san_benito;

-- Crea la base de datos 'colegio_san_benito' con el juego de caracteres utf8mb4
CREATE DATABASE colegio_san_benito CHARSET utf8mb4;

-- Usa la base de datos 'colegio_san_benito'
USE colegio_san_benito;

-- Crear una tabla para almacenar los datos del formulario
CREATE TABLE formulario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    carrera VARCHAR(255) NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    apellidos VARCHAR(255) NOT NULL,
    correo VARCHAR(255) NOT NULL,
    asunto VARCHAR(255) NOT NULL,
    fecha TIME NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    estado VARCHAR(255) NOT NULL,
    nombre_estudiante VARCHAR(255) NOT NULL,
    apellido_estudiante VARCHAR(255) NOT NULL,
    seccion VARCHAR(255) NOT NULL
);

--nuevo
CREATE TABLE Estudiante (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombres VARCHAR(60) NOT NULL,
    FechaNacimiento DATE,
    Genero VARCHAR(10),
    Telefono VARCHAR(9)
);

CREATE TABLE Apoderados (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombres VARCHAR(60) NOT NULL,
    Apellidos VARCHAR(60) NOT NULL,
    Email VARCHAR(80) NOT NULL,
    Celular VARCHAR(9),
    EstudianteID INT,
    FOREIGN KEY (EstudianteID) REFERENCES Estudiante(ID)
);

CREATE TABLE Director (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombres VARCHAR(60) NOT NULL,
    Apellidos VARCHAR(60) NOT NULL
);

CREATE TABLE PersonalAdministrativo (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombres VARCHAR(50) NOT NULL,
    Apellidos VARCHAR(50) NOT NULL,
    FechaContrato DATETIME,
    Contacto TEXT,
    Celular VARCHAR(9)
);

CREATE TABLE Contacto (
    Email VARCHAR(80) NOT NULL,
    Asunto VARCHAR(90) NOT NULL,
    FechaEnvio DATETIME,
    Mensaje TEXT,
    Celular VARCHAR(9)
);

CREATE TABLE Aula (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Capacidad INT,
    Ubicacion VARCHAR(100),
    Equipamiento TEXT
);

CREATE TABLE Profesor (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombres VARCHAR(50) NOT NULL,
    Apellidos VARCHAR(50) NOT NULL,
    Especialidad VARCHAR(20) NOT NULL,
    CorreoElectronico VARCHAR(80) NOT NULL
);

CREATE TABLE Curso (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(80),
    Codigo VARCHAR(80),
    Descripcion TEXT,
    Horario DATETIME
);

CREATE TABLE ProfesorCurso (
    ProfesorID INT,
    CursoID INT,
    FOREIGN KEY (ProfesorID) REFERENCES Profesor(ID),
    FOREIGN KEY (CursoID) REFERENCES Curso(ID)
);

CREATE TABLE Formulario (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60) NOT NULL,
    Descripcion VARCHAR(255) NOT NULL
);

-- Creación de la tabla FormularioEstudiante
CREATE TABLE FormularioEstudiante (
    id_formulario INT AUTO_INCREMENT NOT NULL,
    id INT NOT NULL,
    nombre_a VARCHAR(20) NOT NULL,
    apellidos_a VARCHAR(20) NOT NULL,
    asunto TEXT NOT NULL,
    fecha DATETIME NOT NULL,
    grado INT NOT NULL,
    seccion VARCHAR(10) NOT NULL,
    id_estudiante INT NOT NULL,
    nombre_estudiante CHAR(30) NOT NULL,
    apellido_estudiante CHAR(30) NOT NULL,
 
    PRIMARY KEY (id_formulario, id_estudiante),
    CONSTRAINT ck_grado CHECK (grado >= 1 AND grado <= 6),
    CONSTRAINT ck_seccion CHECK (seccion IN ('A', 'B', 'C', 'D', 'E')),
    CONSTRAINT ck_nombre_a CHECK (nombre_a REGEXP '^[A-Za-z0-9 _]+$'),
    CONSTRAINT ck_apellidos_a CHECK (apellidos_a REGEXP '^[A-Za-z0-9 _]+$'),
    CONSTRAINT ck_asunto CHECK (asunto REGEXP '^[A-Za-z0-9 _.,!?]+$'),
    CONSTRAINT ck_nombre_estudiante CHECK (nombre_estudiante REGEXP '^[A-Za-z]+$'),
    CONSTRAINT ck_apellido_estudiante CHECK (apellido_estudiante REGEXP '^[A-Za-z]+$')
);