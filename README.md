# Proyecto SQL SPA y Bienestar

## Descripción

Este proyecto consiste en la creación de una base de datos básica para un sistema de SPA y Bienestar utilizando SQLite.

Durante la actividad se crearon tablas para almacenar información de servicios y clientes, además de realizar consultas básicas para visualizar y organizar los datos.

El objetivo fue aprender a:

- crear tablas
- insertar registros
- consultar información
- ordenar resultados
- contar registros

---

# Estructura de la Base de Datos

La base de datos contiene 2 tablas principales.

---

## Tabla: servicios

Almacena los servicios ofrecidos por el SPA.

Campos:

- id
- nombre
- precio
- duracion

Características:

- PRIMARY KEY en id

---

## Tabla: clientes

Almacena la información de los clientes.

Campos:

- id
- nombre
- telefono
- ciudad

Características:

- PRIMARY KEY en id

---

# Inserción de Datos

Se insertaron registros en ambas tablas utilizando:

```sql
INSERT INTO
```

Se agregaron:

- 5 servicios
- 5 clientes

---

# Consultas Realizadas

## Mostrar servicios

Se realizó una consulta para visualizar todos los servicios registrados.

```sql
SELECT id, nombre, precio, duracion
FROM servicios;
```

---

## Ordenar nombres

Se utilizó ORDER BY para ordenar alfabéticamente los nombres de los servicios.

```sql
SELECT nombre
FROM servicios
ORDER BY nombre;
```

---

## Contar servicios

Se utilizó COUNT para contar el total de servicios registrados.

```sql
SELECT COUNT(id) AS total_servicios
FROM servicios;
```

---

# Comandos SQL Utilizados

Durante el proyecto se utilizaron los siguientes comandos:

- CREATE TABLE
- INSERT INTO
- SELECT
- ORDER BY
- COUNT

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

- crear tablas en SQLite
- insertar datos
- realizar consultas básicas
- ordenar resultados con ORDER BY
- contar registros utilizando COUNT
- trabajar con bases de datos en Visual Studio Code

---

# Autor

Emily Dayan Miranda Caceres