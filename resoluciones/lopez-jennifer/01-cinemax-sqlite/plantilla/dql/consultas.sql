-- .headers on
-- .mode column

-- Ejercicio 01: CineMax SQLite
-- Escriba aqui las consultas obligatorias del README.

-- 1. Listar todos los registros principales.
SELECT * FROM funciones;

-- 2. Mostrar solo dos columnas relevantes.
SELECT titulo, duracion_minutos FROM peliculas;

-- 3. Filtrar por condición numérica o de fecha
SELECT * FROM peliculas WHERE duracion_minutos > 150;

-- 4. Ordenar resultados 
SELECT * FROM peliculas ORDER BY duracion_minutos ASC;

-- 5. Mostrar top 5 por una métrica .
SELECT * FROM boletos ORDER BY precio DESC LIMIT 5;

-- 6. Contar registros totales.
SELECT COUNT(*) AS total_boletos FROM boletos;

-- 7. Calcular promedio, mínimo o máximo 
SELECT AVG(precio) AS precio_promedio, MIN(precio) AS minimo, MAX(precio) AS maximo FROM boletos;

-- 8. Agrupar con GROUP BY 
SELECT id_funcion, COUNT(*) AS total_boletos FROM boletos GROUP BY id_funcion;

-- 9. Relacionar mínimo dos tablas con JOIN.
SELECT p.titulo, s.nombre AS nombre_sala, f.horario 
FROM funciones f
JOIN peliculas p ON f.id_pelicula = p.id
JOIN salas s ON f.id_sala = s.id_sala;

-- 10. Usar WHERE, ORDER BY y LIMIT 
SELECT * FROM boletos WHERE precio > 50 ORDER BY precio DESC LIMIT 3;

-- 11. Crear reporte con alias
SELECT titulo AS nombre_pelicula, clasificacion AS rating FROM peliculas;

-- 12. Consulta para decisión del negocio 
SELECT f.id_funcion, COUNT(b.id_boleto) AS total_vendidos
FROM funciones f
LEFT JOIN boletos b ON f.id_funcion = b.id_funcion
GROUP BY f.id_funcion
HAVING total_vendidos < 10;