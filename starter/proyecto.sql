-- ============================================
-- SPA / BIENESTAR
-- ============================================

-- Tabla principal
CREATE TABLE servicios (
    id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    precio REAL,
    duracion INTEGER
);

-- Segunda tabla
CREATE TABLE clientes (
    id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    telefono TEXT,
    ciudad TEXT
);

-- Datos (mínimo 5 cada uno)

INSERT INTO servicios (id, nombre, precio, duracion) VALUES
(1, 'Masaje relajante', 80000, 60),
(2, 'Limpieza facial', 60000, 45),
(3, 'Masaje deportivo', 90000, 60),
(4, 'Aromaterapia', 70000, 50),
(5, 'Tratamiento corporal', 120000, 90);

INSERT INTO clientes (id, nombre, telefono, ciudad) VALUES
(1, 'Ana', '3001234567', 'Bogotá'),
(2, 'Luis', '3012345678', 'Medellín'),
(3, 'Sofia', '3023456789', 'Cali'),
(4, 'Carlos', '3034567890', 'Bogotá'),
(5, 'Laura', '3045678901', 'Cartagena');

-- Consultas

-- Mostrar servicios
SELECT id, nombre, precio, duracion
FROM servicios;

-- Nombres ordenados
SELECT nombre
FROM servicios
ORDER BY nombre;

-- Contar servicios
SELECT COUNT(id) AS total_servicios
FROM servicios;