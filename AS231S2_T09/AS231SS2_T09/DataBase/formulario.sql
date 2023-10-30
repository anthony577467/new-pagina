USE fechascivicas;

-- Creación de la tabla 'Formulario'
CREATE TABLE Formulario (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60) NOT NULL,
    Descripcion VARCHAR(255) NOT NULL
);

-- Creación de la tabla 'Estudiante'
CREATE TABLE Estudiante (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombres VARCHAR(60) NOT NULL,
    Apellidos VARCHAR(60) NOT NULL,
    FechaNacimiento DATE,
    Genero VARCHAR(10),
    Telefono VARCHAR(9)
);

-- Creación de la tabla 'FechasCivicas'
CREATE TABLE FechasCivicas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Descripcion VARCHAR(255) NOT NULL
);

-- Creación de la tabla 'FormularioEstudiante'
CREATE TABLE FormularioEstudiante (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FormularioID INT NOT NULL,
    EstudianteID INT NOT NULL,
    Nombre VARCHAR(60) NOT NULL,
    Apellido VARCHAR(60) NOT NULL,
    Asunto TEXT NOT NULL,
    Fecha DATETIME NOT NULL,
    Grado INT NOT NULL,
    Seccion VARCHAR(10) NOT NULL,
    NombreEstudiante VARCHAR(60) NOT NULL,
    ApellidoEstudiante VARCHAR(60) NOT NULL,
    FOREIGN KEY (FormularioID) REFERENCES Formulario(ID),
    FOREIGN KEY (EstudianteID) REFERENCES Estudiante(ID)
);


-- Restricciones en la tabla FormularioEstudiante
ALTER TABLE FormularioEstudiante
    ADD CONSTRAINT CK_Grado CHECK (Grado >= 1 AND Grado <= 12);

ALTER TABLE FormularioEstudiante
    ADD CONSTRAINT CK_Seccion CHECK (Seccion IN ('A', 'B', 'C', 'D', 'E'));

-- Restricciones en la tabla FechasCivicas
ALTER TABLE FechasCivicas
    ADD CONSTRAINT CK_FechaValida CHECK (Fecha >= '2023-01-01' AND Fecha <= '2023-12-31');

