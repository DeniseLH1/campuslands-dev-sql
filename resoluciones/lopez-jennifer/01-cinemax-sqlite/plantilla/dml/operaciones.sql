PRAGMA foreign_keys = ON;

-- Ejercicio 01: CineMax SQLite
-- Agregue aqui INSERT, UPDATE y DELETE adicionales.

-- INSERT validos:
INSERT INTO peliculas (titulo, duracion_minutos, clasificacion) VALUES ('El pianista', 150, 'B15');
-- UPDATE validos con WHERE:
UPDATE salas SET capacidad = 25 WHERE nombre = 'VIP';
-- DELETE controlados con WHERE:
DELETE FROM boletos WHERE id_boleto = 10;
-- Casos que deben fallar por restricciones, dejelos comentados:
-- INSERT INTO ...;

