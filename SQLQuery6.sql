USE Biblioteca98;

-- 06_create_procedure_prestamo.sql
GO
CREATE PROCEDURE HacerPrestamo @id_socio INT, @id_libro INT
AS
BEGIN
    INSERT INTO Prestamos (id_socio, id_libro, fecha_retiro)
    VALUES (@id_socio, @id_libro, GETDATE());
END;

-- 07_create_procedure_devolucion.sql
GO
CREATE PROCEDURE HacerDevolucion @id_prestamo INT
AS
BEGIN
    UPDATE Prestamos SET fecha_devolucion = GETDATE()
    WHERE id_prestamo = @id_prestamo;
END;