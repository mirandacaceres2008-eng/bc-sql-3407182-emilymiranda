-- – ============================================
-- – PROYECTO SEMANAL: NULL y Constraints
-- – Semana 07 — Spa y Bienestar
-- – ============================================

PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS packages;
DROP TABLE IF EXISTS treatments;
DROP TABLE IF EXISTS therapists;
DROP TABLE IF EXISTS clients;


-- CLIENTES


CREATE TABLE clients (
id INTEGER PRIMARY KEY,
full_name TEXT NOT NULL,
phone TEXT UNIQUE,
email TEXT UNIQUE,
notes TEXT
);


-- TERAPEUTAS

CREATE TABLE therapists (
id INTEGER PRIMARY KEY,
full_name TEXT NOT NULL,
specialty TEXT NOT NULL
);


-- TRATAMIENTOS

CREATE TABLE treatments (
id INTEGER PRIMARY KEY,
treatment_name TEXT NOT NULL,
duration_minutes INTEGER CHECK(duration_minutes > 0),
price REAL NOT NULL CHECK(price > 0),
description TEXT
);


-- – PAQUETES


CREATE TABLE packages (
id INTEGER PRIMARY KEY,
client_id INTEGER NOT NULL,
treatment_id INTEGER NOT NULL,
therapist_id INTEGER NOT NULL,
sessions INTEGER NOT NULL CHECK(sessions > 0),
status TEXT DEFAULT ‘Activo’,

FOREIGN KEY (client_id)
    REFERENCES clients(id),
FOREIGN KEY (treatment_id)
    REFERENCES treatments(id),
FOREIGN KEY (therapist_id)
    REFERENCES therapists(id)

);


-- – DATOS DE PRUEBA

INSERT INTO clients VALUES
(1,‘Laura Gomez’,‘3001112233’,‘laura@gmail.com’,NULL),
(2,‘Carlos Perez’,‘3012223344’,‘carlos@gmail.com’,‘Cliente frecuente’),
(3,‘Maria Torres’,‘3023334455’,‘maria@gmail.com’,NULL);

INSERT INTO therapists VALUES
(1,‘Ana Martinez’,‘Masajes’),
(2,‘Pedro Lopez’,‘Faciales’),
(3,‘Luisa Herrera’,‘Aromaterapia’);

INSERT INTO treatments VALUES
(1,‘Masaje relajante’,60,120000,‘Relajación muscular’),
(2,‘Limpieza facial’,45,90000,NULL),
(3,‘Aromaterapia’,50,110000,NULL);

INSERT INTO packages VALUES
(1,1,1,1,5,‘Activo’),
(2,2,2,2,3,‘Activo’),
(3,3,3,3,4,‘Activo’);


-- CONSULTAS CON NULL


-- Clientes con observaciones NULL

SELECT
id,
full_name
FROM clients
WHERE notes IS NULL;

-- Mostrar observaciones reemplazando NULL

SELECT
full_name,
COALESCE(notes,‘Sin observaciones’) AS observacion
FROM clients;

-- Ejemplo NULLIF

SELECT
NULLIF(sessions,5)
FROM packages;