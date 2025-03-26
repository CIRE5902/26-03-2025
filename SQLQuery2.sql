USE Biblioteca98;

-- 01_create_table_socios.sql
CREATE TABLE Socios (
    id_socio INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    fecha_socio DATE NOT NULL
);