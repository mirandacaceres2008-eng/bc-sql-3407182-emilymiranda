-- ============================================
-- SEMANA 03 - DML SPA Y BIENESTAR
-- ============================================

-- ============================================
-- PARTE 1: INSERT (DATOS)
-- ============================================

-- CLIENTS (15 registros)
INSERT INTO clients (id, name, phone) VALUES
(1, 'Ana Lopez', '3001111111'),
(2, 'Carlos Ruiz', '3002222222'),
(3, 'Laura Gomez', '3003333333'),
(4, 'Jorge Martinez', '3004444444'),
(5, 'Sofia Torres', '3005555555'),
(6, 'Miguel Herrera', '3006666666'),
(7, 'Camila Rojas', '3007777777'),
(8, 'Andres Perez', '3008888888'),
(9, 'Valentina Diaz', '3009999999'),
(10, 'Daniel Castro', '3011111111'),
(11, 'Paula Vargas', '3012222222'),
(12, 'Luis Moreno', '3013333333'),
(13, 'Natalia Silva', '3014444444'),
(14, 'Sebastian Cruz', '3015555555'),
(15, 'Mariana Reyes', '3016666666');

-- THERAPISTS (15 registros)
INSERT INTO therapists (id, name, specialty) VALUES
(1, 'Laura Diaz', 'Masajes'),
(2, 'Carlos Perez', 'Facial'),
(3, 'Ana Torres', 'Relajacion'),
(4, 'Luis Gomez', 'Deportivo'),
(5, 'Sofia Ramirez', 'Aromaterapia'),
(6, 'Pedro Castillo', 'Masajes'),
(7, 'Maria Lopez', 'Facial'),
(8, 'Juan Herrera', 'Relajacion'),
(9, 'Diana Rojas', 'Deportivo'),
(10, 'Camilo Vargas', 'Aromaterapia'),
(11, 'Andrea Silva', 'Masajes'),
(12, 'Jorge Diaz', 'Facial'),
(13, 'Valeria Cruz', 'Relajacion'),
(14, 'Santiago Perez', 'Deportivo'),
(15, 'Luisa Moreno', 'Aromaterapia');

-- TREATMENTS (15 registros)
INSERT INTO treatments (id, name, price, duration) VALUES
(1, 'Masaje relajante', 50000, 60),
(2, 'Limpieza facial', 60000, 45),
(3, 'Masaje deportivo', 70000, 60),
(4, 'Aromaterapia', 55000, 50),
(5, 'Masaje piedras calientes', 80000, 90),
(6, 'Facial hidratante', 65000, 45),
(7, 'Masaje profundo', 75000, 60),
(8, 'Reflexologia', 50000, 40),
(9, 'Terapia antiestrés', 70000, 60),
(10, 'Masaje express', 40000, 30),
(11, 'Facial rejuvenecedor', 85000, 50),
(12, 'Masaje craneal', 45000, 30),
(13, 'Terapia muscular', 72000, 60),
(14, 'Aromaterapia premium', 90000, 70),
(15, 'Masaje integral', 88000, 90);

-- PACKAGES (5 registros)
INSERT INTO packages (id, name, price) VALUES
(1, 'Paquete Relax', 120000),
(2, 'Paquete Premium', 200000),
(3, 'Paquete Facial', 150000),
(4, 'Paquete Deportivo', 180000),
(5, 'Paquete Completo', 250000);


-- ============================================
-- PARTE 2: UPDATE
-- ============================================

-- Actualizar una fila por PK
UPDATE clients
SET name = 'Ana Maria Lopez'
WHERE id = 1;

-- Actualizar múltiples columnas
UPDATE therapists
SET name = 'Carlos Andres Perez',
    specialty = 'Masajes avanzados'
WHERE id = 2;

-- Actualizar múltiples filas con condición
UPDATE treatments
SET price = price + 5000
WHERE price < 60000;


-- ============================================
-- PARTE 3: DELETE SEGURO
-- ============================================

-- Verificar antes de eliminar
SELECT id, name FROM clients
WHERE id = 15;

-- Eliminar con seguridad
DELETE FROM clients
WHERE id = 15;


-- ============================================
-- VERIFICACIÓN FINAL
-- ============================================

SELECT id, name, phone 
FROM clients 
ORDER BY id;

SELECT id, name, price 
FROM treatments 
ORDER BY id;

SELECT id, name, specialty 
FROM therapists 
ORDER BY id;

SELECT id, name, price 
FROM packages 
ORDER BY id;