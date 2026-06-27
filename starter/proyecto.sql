-- ============================================
-- PROYECTO SEMANAL: JOINs aplicados a mi dominio
-- Semana 09 — INNER JOIN y LEFT JOIN
-- Dominio: Spa y Bienestar
-- ============================================

PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS packages;
DROP TABLE IF EXISTS treatments;
DROP TABLE IF EXISTS therapists;
DROP TABLE IF EXISTS clients;

-- ============================================
-- CLIENTES
-- ============================================

CREATE TABLE clients (
    id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    phone TEXT UNIQUE,
    email TEXT UNIQUE,
    notes TEXT
);

-- ============================================
-- TERAPEUTAS
-- ============================================

CREATE TABLE therapists (
    id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    specialty TEXT NOT NULL
);

-- ============================================
-- TRATAMIENTOS
-- ============================================

CREATE TABLE treatments (
    id INTEGER PRIMARY KEY,
    treatment_name TEXT NOT NULL,
    duration_minutes INTEGER NOT NULL,
    price REAL NOT NULL,
    description TEXT
);

-- ============================================
-- PAQUETES
-- ============================================

CREATE TABLE packages (
    id INTEGER PRIMARY KEY,
    client_id INTEGER NOT NULL,
    treatment_id INTEGER NOT NULL,
    therapist_id INTEGER NOT NULL,
    sessions INTEGER NOT NULL,
    status TEXT NOT NULL,

    FOREIGN KEY(client_id) REFERENCES clients(id),
    FOREIGN KEY(treatment_id) REFERENCES treatments(id),
    FOREIGN KEY(therapist_id) REFERENCES therapists(id)
);

-- ============================================
-- DATOS DE PRUEBA
-- ============================================

INSERT INTO clients VALUES
(1,'Laura Gomez','3001112233','laura@gmail.com',NULL),
(2,'Carlos Perez','3012223344','carlos@gmail.com','Cliente frecuente'),
(3,'Maria Torres','3023334455','maria@gmail.com',NULL);

INSERT INTO therapists VALUES
(1,'Ana Martinez','Masajes'),
(2,'Pedro Lopez','Faciales'),
(3,'Luisa Herrera','Aromaterapia');

INSERT INTO treatments VALUES
(1,'Masaje relajante',60,120000,'Relajación muscular'),
(2,'Limpieza facial',45,90000,NULL),
(3,'Aromaterapia',50,110000,NULL),
(4,'Reflexología',40,85000,'Tratamiento sin paquetes');

INSERT INTO packages VALUES
(1,1,1,1,5,'Activo'),
(2,2,2,2,3,'Activo'),
(3,3,3,3,4,'Activo');

-- ============================================
-- CONSULTA 1: INNER JOIN principal
-- Paquetes y tratamientos asociados
-- ============================================

SELECT
    p.id AS paquete,
    t.treatment_name AS tratamiento,
    p.sessions
FROM packages p
INNER JOIN treatments t
ON p.treatment_id = t.id;

-- ============================================
-- CONSULTA 2: JOIN con tres tablas
-- Cliente + tratamiento + terapeuta
-- ============================================

SELECT
    c.full_name AS cliente,
    t.treatment_name AS tratamiento,
    th.full_name AS terapeuta,
    p.sessions
FROM packages p
INNER JOIN clients c
    ON p.client_id = c.id
INNER JOIN treatments t
    ON p.treatment_id = t.id
INNER JOIN therapists th
    ON p.therapist_id = th.id;

-- ============================================
-- CONSULTA 3: LEFT JOIN
-- Mostrar todos los tratamientos
-- incluso si no tienen paquetes
-- ============================================

SELECT
    t.treatment_name AS tratamiento,
    p.status
FROM treatments t
LEFT JOIN packages p
ON t.id = p.treatment_id;

-- ============================================
-- CONSULTA 4: Detectar huérfanos
-- Tratamientos sin paquetes
-- ============================================

SELECT
    t.treatment_name AS tratamiento_sin_paquetes
FROM treatments t
LEFT JOIN packages p
ON t.id = p.treatment_id
WHERE p.id IS NULL;

-- ============================================
-- CONSULTA 5: Reporte agregado
-- Cantidad de paquetes por tratamiento
-- ============================================

SELECT
    t.treatment_name AS tratamiento,
    COUNT(p.id) AS total_paquetes
FROM treatments t
LEFT JOIN packages p
ON t.id = p.treatment_id
GROUP BY t.treatment_name
ORDER BY total_paquetes DESC;