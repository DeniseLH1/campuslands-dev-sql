-- PRAGMA foreign_keys = ON;

-- Ejercicio 01: CineMax SQLite

INSERT INTO peliculas (titulo, duracion_minutos, clasificacion) VALUES 
('EL padrino', 175, 'C'), ('Matrix', 136, 'B'), 
('El caballero de la noche', 152, 'B'), ('Milagros inesperados', 189, 'B'), 
('Volver al futuro', 116, 'A');

INSERT INTO salas (nombre, capacidad) VALUES 
('Sala 1', 100), ('Sala 2', 80), ('Sala 3', 120), ('Sala 4', 50), ('VIP', 20);

INSERT INTO funciones (id_pelicula, id_sala, horario) VALUES 
(1, 1, '2026-06-15 14:00'), (2, 2, '2026-06-15 16:00'), (3, 3, '2026-06-15 18:00'), 
(4, 4, '2026-06-15 20:00'), (5, 5, '2026-06-15 22:00');

insert into boletos(id_funcion,precio,asiento) values
(1,45,'B2'),(2,36,'C8'),(3,46,'A6'),
(4,42,'A9'),(5,56,'J6'),(4,32,'B4'),
(1,40,'B5'),(2,30,'C6'),(3,40,'A5'),
(4,65,'A1'),(5,40,'J3'),(4,52,'E5')

