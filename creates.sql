-- Creación de la tabla Area
CREATE TABLE Area (
    id_area INT IDENTITY(1,1) PRIMARY KEY,
    nombre_area VARCHAR(255) NOT NULL
);

-- Creación de la tabla Usuario
CREATE TABLE Usuario (
    id_usuario INT IDENTITY(1,1) PRIMARY KEY,
    nombre_usuario VARCHAR(255) NOT NULL,
    genero VARCHAR(10) NOT NULL,
    edad INT NOT NULL,
    estado_civil VARCHAR(50) NOT NULL,
    nivel_academico VARCHAR(100) NOT NULL,
    profesion VARCHAR(100) NOT NULL,
    antiguedad INT NOT NULL,
    id_area INT NOT NULL,
    FOREIGN KEY (id_area) REFERENCES Area(id_area)
);

-- Creación de la tabla Cuestionario
CREATE TABLE Cuestionario (
    id_cuestionario INT IDENTITY(1,1) PRIMARY KEY,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

-- Creación de la tabla Categoria
CREATE TABLE Categoria (
    id_categoria INT IDENTITY(1,1) PRIMARY KEY,
    nombre_categoria VARCHAR(255) NOT NULL
);

-- Creación de la tabla Pregunta
CREATE TABLE Pregunta (
    id_pregunta INT IDENTITY(1,1) PRIMARY KEY,
    descripcion VARCHAR(1000) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);

-- Creación de la tabla Respuesta
CREATE TABLE Respuesta (
    id_respuesta INT IDENTITY(1,1) PRIMARY KEY,
    valor VARCHAR(255) NOT NULL,
    numero_clics INT NOT NULL,
    tiempo_respuesta TIME NOT NULL,  
    id_pregunta INT,
    id_cuestionario INT,
    FOREIGN KEY (id_pregunta) REFERENCES Pregunta(id_pregunta),
    FOREIGN KEY (id_cuestionario) REFERENCES Cuestionario(id_cuestionario)
);