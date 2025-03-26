USE Biblioteca98;

-- 03_create_table_prestamos.sql
CREATE TABLE Prestamos (
    id_prestamo INT IDENTITY(1,1) PRIMARY KEY,
    id_socio INT NOT NULL,
    id_libro INT NOT NULL,
    fecha_retiro DATE NOT NULL,
    fecha_devolucion DATE,
    FOREIGN KEY (id_socio) REFERENCES Socios(id_socio) ON DELETE CASCADE,
    FOREIGN KEY (id_libro) REFERENCES Libros(id_libro) ON DELETE CASCADE
);