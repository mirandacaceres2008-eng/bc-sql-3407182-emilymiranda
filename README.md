# Proyecto SQL SPA — Semana 02

## Descripción

Este proyecto consiste en la creación de una base de datos relacional para un sistema de SPA y Bienestar utilizando SQLite.

Durante la actividad se trabajó el lenguaje DDL (Data Definition Language), creando tablas, relaciones y restricciones para organizar la información del sistema.

El objetivo fue diseñar correctamente la estructura de una base de datos relacional aplicando:

- CREATE TABLE
- DROP TABLE
- PRIMARY KEY
- FOREIGN KEY
- CHECK
- DEFAULT
- UNIQUE
- PRAGMA

---

# Estructura de la Base de Datos

La base de datos está compuesta por 5 tablas relacionadas entre sí.

---

## Tabla: clients

Almacena la información de los clientes del SPA.

Campos:

- id
- name
- email
- phone
- is_active

Características:

- PRIMARY KEY en id
- email único mediante UNIQUE
- valor por defecto en is_active

---

## Tabla: treatments

Contiene los tratamientos ofrecidos por el SPA.

Campos:

- id
- name
- price
- duration
- is_active

Características:

- PRIMARY KEY en id
- restricción CHECK para validar precios mayores a 0
- valor por defecto en is_active

---

## Tabla: therapists

Almacena la información de los terapeutas.

Campos:

- id
- name
- specialty
- is_active

Características:

- PRIMARY KEY en id
- valor por defecto en is_active

---

## Tabla: packages

Contiene paquetes de servicios del SPA.

Campos:

- id
- name
- price
- treatment_id

Características:

- PRIMARY KEY en id
- FOREIGN KEY hacia treatments(id)
- restricción CHECK para validar precios

---

## Tabla: client_treatment

Tabla intermedia que relaciona clientes, tratamientos y terapeutas.

Campos:

- id
- client_id
- treatment_id
- therapist_id

Características:

- PRIMARY KEY en id
- FOREIGN KEY hacia clients(id)
- FOREIGN KEY hacia treatments(id)
- FOREIGN KEY hacia therapists(id)

---

# Comandos DDL Utilizados

## DROP TABLE

Se utilizó para eliminar tablas existentes antes de recrearlas.

Ejemplo:

```sql
DROP TABLE IF EXISTS clients;
```

---

## CREATE TABLE

Se utilizó para crear las tablas del sistema.

Ejemplo:

```sql
CREATE TABLE IF NOT EXISTS clients (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);
```

---

## PRIMARY KEY

Permite identificar de forma única cada registro.

---

## FOREIGN KEY

Permite relacionar tablas entre sí.

Ejemplo:

```sql
FOREIGN KEY (treatment_id) REFERENCES treatments(id)
```

---

## CHECK

Se utilizó para validar datos.

Ejemplo:

```sql
CHECK(price > 0)
```

---

## DEFAULT

Permite asignar valores automáticos.

Ejemplo:

```sql
is_active INTEGER DEFAULT 1
```

---

## UNIQUE

Evita datos repetidos.

Ejemplo:

```sql
email TEXT UNIQUE
```

---

# Verificación de Tablas

Se utilizaron comandos de verificación para comprobar la estructura de la base de datos.

## Mostrar tablas

```sql
.tables
```

---

## Mostrar estructura de tablas

```sql
PRAGMA table_info(clients);
```

---

# Cómo ejecutar el proyecto

## Paso 1

Abrir la terminal en Visual Studio Code.

---

## Paso 2

Ejecutar SQLite:

```bash
sqlite3.exe
```

---

## Paso 3

Abrir la base de datos:

```sql
.open mi_dominio.db
```

---

## Paso 4

Ejecutar el archivo SQL:

```sql
.read proyecto.sql
```

---

# Aprendizajes

Con este proyecto se aprendió a:

- crear bases de datos relacionales
- diseñar tablas correctamente
- utilizar PRIMARY KEY y FOREIGN KEY
- aplicar restricciones CHECK y UNIQUE
- validar estructuras con PRAGMA
- trabajar con SQLite en Visual Studio Code

---

# Autor

Emily Dayan Miranda Caceres