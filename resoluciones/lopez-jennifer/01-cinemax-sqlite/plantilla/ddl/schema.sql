-- PRAGMA foreign_keys = ON;
-- Ejercicio 01: CineMax SQLite

CREATE DATABASE CineMax;
use CineMax;

CREATE TABLE peliculas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo TEXT NOT NULL,
    duracion_minutos INT NOT NULL CHECK(duracion_minutos > 0),
    clasificacion TEXT NOT NULL
);

CREATE TABLE salas (
    id_sala INT PRIMARY KEY AUTO_INCREMENT,
    nombre TEXT NOT NULL,
    capacidad INT NOT NULL CHECK (capacidad > 0)
);

CREATE TABLE funciones (
    id_funcion INT PRIMARY KEY AUTO_INCREMENT,
    id_pelicula INT NOT NULL,
    id_sala INT NOT NULL,
    horario DATETIME NOT NULL,
    FOREIGN KEY (id_pelicula) REFERENCES peliculas(id),
    FOREIGN KEY (id_sala) REFERENCES salas(id_sala)
);

CREATE TABLE boletos (
    id_boleto INT PRIMARY KEY AUTO_INCREMENT,
    id_funcion INT NOT NULL,
    precio REAL NOT NULL CHECK (precio >= 0),
    asiento TEXT NOT NULL,
    FOREIGN KEY (id_funcion) REFERENCES funciones(id_funcion)
);