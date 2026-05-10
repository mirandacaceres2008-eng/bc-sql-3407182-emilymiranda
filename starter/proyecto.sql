-- ============================================
-- PROYECTO SEMANAL: Operadores y Filtros
-- Semana 05 — BETWEEN, IN, LIKE
-- ============================================

-- ============================================
-- RECREAR TABLAS (DDL)
-- ============================================

DROP TABLE IF EXISTS packages;
DROP TABLE IF EXISTS treatments;
DROP TABLE IF EXISTS therapists;
DROP TABLE IF EXISTS clients;

CREATE TABLE clients (
id INT PRIMARY KEY,
full_name VARCHAR(100),
phone VARCHAR(20),
email VARCHAR(100)
);

CREATE TABLE therapists (
id INT PRIMARY KEY,
full_name VARCHAR(100),
specialty VARCHAR(100)
);

CREATE TABLE treatments (
id INT PRIMARY KEY,
treatment_name VARCHAR(100),
duration_minutes INT,
price DECIMAL(10,2)
);

CREATE TABLE packages (
id INT PRIMARY KEY,
client_id INT,
treatment_id INT,
therapist_id INT,
sessions INT,
FOREIGN KEY (client_id) REFERENCES clients(id),
FOREIGN KEY (treatment_id) REFERENCES treatments(id),
FOREIGN KEY (therapist_id) REFERENCES therapists(id)
);

-- ============================================
-- PARTE 1: INSERT INTO
-- ============================================

-- Insertar clientes
INSERT INTO clients (id, full_name, phone, email)
VALUES
(1, 'Laura Gomez', '3001112233', '[laura@gmail.com](mailto:laura@gmail.com)'),
(2, 'Carlos Perez', '3012223344', '[carlos@gmail.com](mailto:carlos@gmail.com)'),
(3, 'Maria Torres', '3023334455', '[maria@gmail.com](mailto:maria@gmail.com)'),
(4, 'Andres Ruiz', '3034445566', '[andres@gmail.com](mailto:andres@gmail.com)'),
(5, 'Sofia Diaz', '3045556677', '[sofia@gmail.com](mailto:sofia@gmail.com)');

-- Insertar terapeutas
INSERT INTO therapists (id, full_name, specialty)
VALUES
(1, 'Ana Martinez', 'Masajes relajantes'),
(2, 'Pedro Lopez', 'Terapia facial'),
(3, 'Luisa Herrera', 'Aromaterapia'),
(4, 'Camilo Vargas', 'Masajes deportivos'),
(5, 'Valentina Castro', 'Spa corporal');

-- Insertar tratamientos
INSERT INTO treatments (id, treatment_name, duration_minutes, price)
VALUES
(1, 'Masaje relajante', 60, 120000),
(2, 'Limpieza facial', 45, 90000),
(3, 'Aromaterapia', 50, 110000),
(4, 'Masaje deportivo', 70, 140000),
(5, 'Spa corporal', 90, 180000);

-- Insertar paquetes respetando llaves foráneas
INSERT INTO packages (id, client_id, treatment_id, therapist_id, sessions)
VALUES
(1, 1, 1, 1, 5),
(2, 2, 2, 2, 3),
(3, 3, 3, 3, 4),
(4, 4, 4, 4, 6),
(5, 5, 5, 5, 2);


-- NOTA: Usa el esquema cargado en la Semana 03.
-- Adapta los nombres de tablas y columnas a tu dominio.

-- ============================================
-- CONSULTA 1: Filtro con BETWEEN
-- ============================================
-- TODO: Filtra registros de tu entidad principal usando un rango
--       (precio, cantidad, fecha, id, etc.)

SELECT *
FROM treatments
WHERE price BETWEEN 90000 AND 150000;


-- ============================================
-- CONSULTA 2: Filtro con IN
-- ============================================
-- TODO: Filtra por una lista de categorías, estados o ids relevantes

SELECT *
FROM therapists
WHERE specialty IN ('Masajes relajantes', 'Aromaterapia', 'Spa corporal');


-- ============================================
-- CONSULTA 3: Búsqueda de texto con LIKE
-- ============================================
-- TODO: Busca registros cuyo nombre o descripción contenga un patrón

SELECT *
FROM treatments
WHERE treatment_name LIKE '%Masaje%';


-- ============================================
-- CONSULTA 4: Filtro combinado (≥ 3 operadores)
-- ============================================
-- TODO: Combina BETWEEN, IN y/o LIKE con AND/OR
--       Usa paréntesis si mezclas AND y OR

SELECT *
FROM treatments
WHERE price BETWEEN 90000 AND 180000
  AND treatment_name LIKE '%Spa%'
   OR id IN (1, 3, 5)
ORDER BY price ASC;