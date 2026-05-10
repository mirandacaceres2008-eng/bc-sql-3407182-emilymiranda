-- ============================================
-- PROYECTO SEMANAL: Funciones de Agregación
-- Semana 06 — COUNT, SUM, AVG, GROUP BY, HAVING
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



-- NOTA: Usa el esquema de tu Semana 03. Adapta nombres al dominio.

-- ============================================
-- REPORTE 1: Totales globales
-- ============================================
-- TODO: Cuenta todos los registros y calcula suma/promedio
--       de la columna numérica más relevante de tu dominio

SELECT
    COUNT(*) AS total_tratamientos,
    SUM(price) AS suma_total,
    AVG(price) AS promedio
FROM treatments;


-- ============================================
-- REPORTE 2: Extremos
-- ============================================
-- TODO: Obtén el valor mínimo y máximo de la columna numérica

SELECT
    MIN(price) AS minimo,
    MAX(price) AS maximo
FROM treatments;


-- ============================================
-- REPORTE 3: Subtotales por categoría (GROUP BY)
-- ============================================
-- TODO: Agrupa por la columna de categoría/tipo principal de tu dominio
--       y calcula COUNT + AVG o SUM para cada grupo

SELECT
    specialty,
    COUNT(*) AS total,
    AVG(id) AS promedio
FROM therapists
GROUP BY specialty
ORDER BY total DESC;


-- ============================================
-- REPORTE 4: Filtro de grupos (HAVING)
-- ============================================
-- TODO: Muestra solo los grupos que superen un umbral de negocio

SELECT
    therapist_id,
    COUNT(*) AS total
FROM packages
GROUP BY therapist_id
HAVING COUNT(*) > 0;