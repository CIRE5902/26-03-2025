USE Biblioteca98;

-- 04_insert_socios.sql
INSERT INTO Socios (nombre, direccion, telefono, correo, fecha_socio) VALUES
('Juan P�rez', 'Calle A, 123', '600123456', 'juan@example.com', '2024-01-01'),
('Mar�a L�pez', 'Avenida B, 456', '600654321', 'maria@example.com', '2024-01-02'),
('Pedro Garc�a', 'Calle C, 789', '600987654', 'pedro@example.com', '2024-01-03');

-- 05_insert_libros.sql
INSERT INTO Libros (titulo, autor, fecha_edicion) VALUES
('Niebla', 'Miguel de Unamuno', 1914),
('El �rbol de la ciencia', 'P�o Baroja', 1911),
('San Manuel Bueno, m�rtir', 'Miguel de Unamuno', 1931);