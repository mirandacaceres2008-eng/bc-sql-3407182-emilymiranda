-- ============================================
-- PROYECTO SEMANAL: DDL SPA Y BIENESTAR
-- ============================================

-- ============================================
-- 1. LIMPIEZA: eliminar tablas si existen
-- ============================================

DROP TABLE IF EXISTS client_treatment;
DROP TABLE IF EXISTS packages;
DROP TABLE IF EXISTS treatments;
DROP TABLE IF EXISTS therapists;
DROP TABLE IF EXISTS clients;

-- ============================================
-- 2. TABLA: clients
-- ============================================

CREATE TABLE IF NOT EXISTS clients (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE,
    phone TEXT,
    is_active INTEGER NOT NULL DEFAULT 1
);

-- ============================================
-- 3. TABLA: treatments
-- ============================================

CREATE TABLE IF NOT EXISTS treatments (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    price REAL NOT NULL CHECK(price > 0),
    duration INTEGER NOT NULL,
    is_active INTEGER DEFAULT 1
);

-- ============================================
-- 4. TABLA: therapists
-- ============================================

CREATE TABLE IF NOT EXISTS therapists (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    specialty TEXT,
    is_active INTEGER DEFAULT 1
);

-- ============================================
-- 5. TABLA: packages
-- ============================================

CREATE TABLE IF NOT EXISTS packages (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    price REAL NOT NULL CHECK(price > 0),
    treatment_id INTEGER,
    FOREIGN KEY (treatment_id) REFERENCES treatments(id)
);

-- ============================================
-- 6. TABLA RELACIÓN: client_treatment
-- ============================================

CREATE TABLE IF NOT EXISTS client_treatment (
    id INTEGER PRIMARY KEY,
    client_id INTEGER NOT NULL,
    treatment_id INTEGER NOT NULL,
    therapist_id INTEGER,
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (treatment_id) REFERENCES treatments(id),
    FOREIGN KEY (therapist_id) REFERENCES therapists(id)
);

-- ============================================
-- 7. VERIFICACIÓN
-- ============================================

.tables

PRAGMA table_info(clients);
PRAGMA table_info(treatments);
PRAGMA table_info(therapists);
PRAGMA table_info(packages);
PRAGMA table_info(client_treatment);