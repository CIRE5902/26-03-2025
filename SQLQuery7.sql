USE Biblioteca98;

-- 08_query_libros_prestados.sql
SELECT L.titulo, S.nombre, P.fecha_retiro, P.fecha_devolucion
FROM Prestamos P
JOIN Socios S ON P.id_socio = S.id_socio
JOIN Libros L ON P.id_libro = L.id_libro
WHERE P.fecha_devolucion IS NULL;

-- 09_query_libros_biblioteca.sql
SELECT * FROM Libros WHERE id_libro NOT IN (SELECT id_libro FROM Prestamos WHERE fecha_devolucion IS NULL);

-- 10_query_aviso_cortesia.sql
SELECT S.nombre, S.correo, L.titulo
FROM Prestamos P
JOIN Socios S ON P.id_socio = S.id_socio
JOIN Libros L ON P.id_libro = L.id_libro
WHERE P.fecha_devolucion IS NULL AND DATEDIFF(DAY, P.fecha_retiro, GETDATE()) BETWEEN 25 AND 30;
