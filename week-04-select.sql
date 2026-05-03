-- ============================================
-- Semana 04 — SELECT, WHERE, ORDER BY, LIMIT/OFFSET
-- ============================================

-- ============================================
-- CONSULTA 1: Listado general con columnas explícitas
-- ============================================
SELECT 
    name AS nombre_cliente,
    email AS correo_electronico,
    phone AS telefono,
    is_active AS estado_activo
FROM clients;


-- ============================================
-- CONSULTA 2: Filtro por condición simple
-- ============================================
SELECT 
    name AS nombre_cliente,
    email AS correo
FROM clients
WHERE is_active = 1;


-- ============================================
-- CONSULTA 3: Filtro combinado (AND)
-- ============================================
SELECT 
    name AS nombre_cliente,
    email AS correo,
    phone AS telefono
FROM clients
WHERE is_active = 1
AND phone IS NOT NULL;


-- ============================================
-- CONSULTA 4: Top-N con ORDER BY + LIMIT
-- ============================================
SELECT 
    name AS nombre_tratamiento,
    price AS precio,
    duration AS duracion_minutos
FROM treatments
ORDER BY price DESC
LIMIT 5;


-- ============================================
-- CONSULTA 5: Paginación (página 1 y página 2)
-- ============================================

-- Página 1
SELECT 
    name AS nombre_tratamiento,
    price AS precio
FROM treatments
ORDER BY price ASC
LIMIT 3 OFFSET 0;

-- Página 2
SELECT 
    name AS nombre_tratamiento,
    price AS precio
FROM treatments
ORDER BY price ASC
LIMIT 3 OFFSET 3;