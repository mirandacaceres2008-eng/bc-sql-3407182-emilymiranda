# Proyecto SQL SPA — Semana 04

## Descripción

Este proyecto consiste en la creación y manipulación de una base de datos relacional para un SPA utilizando SQLite.

Durante la actividad se trabajaron operaciones DML (Data Manipulation Language), permitiendo insertar, consultar y organizar información almacenada en diferentes tablas.

Se utilizaron comandos y consultas SQL como:

- INSERT INTO
- SELECT
- WHERE
- ORDER BY
- LIMIT
- OFFSET

El objetivo fue aprender a manipular datos y realizar consultas organizadas dentro de una base de datos relacional.

---

# Estructura de la Base de Datos

La base de datos está compuesta por 4 tablas principales.

---

## Tabla: clients

Contiene la información de los clientes del SPA.

Campos:

- id
- full_name
- phone
- email

---

## Tabla: therapists

Contiene la información de los terapeutas y sus especialidades.

Campos:

- id
- full_name
- specialty

---

## Tabla: treatments

Contiene los tratamientos disponibles.

Campos:

- id
- treatment_name
- duration_minutes
- price

---

## Tabla: packages

Relaciona clientes, tratamientos y terapeutas mediante llaves foráneas.

Campos:

- id
- client_id
- treatment_id
- therapist_id
- sessions

---

# Comandos Utilizados

## DDL (Definición de datos)

Se utilizaron instrucciones para crear y eliminar tablas.

Comandos:

- DROP TABLE
- CREATE TABLE

---

## DML (Manipulación de datos)

Se utilizaron instrucciones para insertar y consultar registros.

Comandos:

- INSERT INTO
- SELECT

---

# Consultas Realizadas

## Consulta 1 — Mostrar clientes

Se realizó una consulta SELECT para mostrar la información de los clientes utilizando alias personalizados.

Ejemplo:

```sql
SELECT
    id AS ID_Cliente,
    full_name AS Nombre_Cliente,
    phone AS Telefono,
    email AS Correo
FROM clients;
```

---

## Consulta 2 — Filtro simple

Se utilizó WHERE para filtrar clientes según una condición específica.

Ejemplo:

```sql
SELECT *
FROM clients
WHERE id = 1;
```

---

## Consulta 3 — Filtro combinado

Se combinaron condiciones utilizando AND.

Ejemplo:

```sql
SELECT *
FROM treatments
WHERE price > 100000
  AND duration_minutes >= 50;
```

Esta consulta muestra tratamientos cuyo precio es mayor a 100.000 y cuya duración es igual o superior a 50 minutos.

---

## Consulta 4 — Top-N con ORDER BY y LIMIT

Se utilizó ORDER BY para ordenar tratamientos por precio y LIMIT para mostrar solo los primeros registros.

Ejemplo:

```sql
SELECT *
FROM treatments
ORDER BY price DESC
LIMIT 5;
```

---

## Consulta 5 — Paginación con LIMIT y OFFSET

Se implementó paginación mostrando registros en dos páginas.

### Página 1

```sql
SELECT *
FROM clients
ORDER BY full_name ASC
LIMIT 3 OFFSET 0;
```

### Página 2

```sql
SELECT *
FROM clients
ORDER BY full_name ASC
LIMIT 3 OFFSET 3;
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

- crear tablas relacionales
- insertar registros