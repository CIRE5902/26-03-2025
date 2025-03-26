USE Biblioteca98;

-- 02_create_table_libros.sql
CREATE TABLE Libros (
    id_libro INT IDENTITY(1,1) PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    fecha_edicion INT NOT NULL CHECK (fecha_edicion BETWEEN 1900 AND 1940)
);
