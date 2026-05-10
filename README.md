# Proyecto SQL SPA — Semana 05

## Descripción

Este proyecto consiste en la creación de una base de datos relacional para un SPA utilizando SQLite.

Durante la actividad se trabajó el uso de operadores y filtros en SQL para realizar consultas específicas sobre la información almacenada en la base de datos.

Se utilizaron operadores como:

- BETWEEN
- IN
- LIKE
- AND
- OR

El objetivo fue aprender a filtrar registros utilizando diferentes condiciones y patrones de búsqueda.

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

Contiene los tratamientos disponibles en el SPA.

Campos:

- id
- treatment_name
- duration_minutes
- price

---

## Tabla: packages

Relaciona clientes, terapeutas y tratamientos mediante llaves foráneas.

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

Se utilizaron instrucciones para insertar información en las tablas.

Comandos:

- INSERT INTO

---

# Consultas Realizadas

## Consulta 1 — BETWEEN

Se utilizó el operador BETWEEN para filtrar tratamientos cuyo precio estuviera dentro de un rango específico.

Ejemplo:

```sql
SELECT *
FROM treatments
WHERE price BETWEEN 90000 AND 150000;
```

Esta consulta muestra tratamientos con precios entre 90.000 y 150.000.

---

## Consulta 2 — IN

Se utilizó el operador IN para buscar terapeutas con ciertas especialidades específicas.

Ejemplo:

```sql
SELECT *
FROM therapists
WHERE specialty IN ('Masajes relajantes', 'Aromaterapia', 'Spa corporal');
```

---

## Consulta 3 — LIKE

Se utilizó el operador LIKE para buscar tratamientos que contengan una palabra específica.

Ejemplo:

```sql
SELECT *
FROM treatments
WHERE treatment_name LIKE '%Masaje%';
```

Esta consulta encuentra tratamientos cuyo nombre contiene la palabra “Masaje”.

---

## Consulta 4 — Filtro combinado

Se combinaron operadores BETWEEN, LIKE e IN usando AND y OR.

Ejemplo:

```sql
SELECT *
FROM treatments
WHERE price BETWEEN 90000 AND 180000
  AND treatment_name LIKE '%Spa%'
   OR id IN (1, 3, 5)
ORDER BY price ASC;
```

Además, se utilizó ORDER BY para ordenar los resultados de menor a mayor precio.

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

- utilizar filtros en SQL
- aplicar operadores BETWEEN, IN y LIKE
- combinar condiciones con AND y OR
- ordenar resultados con ORDER BY
- trabajar con consultas en SQLite
- manejar bases de datos relacionales

---

# Autor

Emily Dayan Miranda Caceres