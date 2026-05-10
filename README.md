# Proyecto SQL SPA — Semana 06

## Descripción

Este proyecto consiste en la creación de una base de datos relacional para un SPA utilizando SQLite.

Durante la actividad se aplicaron funciones de agregación en SQL como:

- COUNT
- SUM
- AVG
- MIN
- MAX
- GROUP BY
- HAVING

El objetivo fue analizar información almacenada en distintas tablas relacionadas con clientes, terapeutas, tratamientos y paquetes del SPA.

---

# Estructura de la Base de Datos

La base de datos contiene 4 tablas principales:

## Tabla: clients

Almacena la información de los clientes del SPA.

Campos:

- id
- full_name
- phone
- email

---

## Tabla: therapists

Almacena la información de los terapeutas y sus especialidades.

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

Relaciona clientes, tratamientos y terapeutas.

Campos:

- id
- client_id
- treatment_id
- therapist_id
- sessions

Además, esta tabla utiliza llaves foráneas para conectar las demás tablas.

---

# Comandos SQL Utilizados

Durante el proyecto se utilizaron los siguientes comandos:

## DDL (Definición de tablas)

- DROP TABLE
- CREATE TABLE

Estas instrucciones permitieron eliminar y volver a crear las tablas del sistema.

---

## DML (Manipulación de datos)

- INSERT INTO

Se utilizaron para insertar registros en cada tabla.

---

# Funciones de Agregación Implementadas

## COUNT()

Se utilizó para contar registros dentro de las tablas.

Ejemplo:

```sql
SELECT COUNT(*) FROM treatments;
```

---

## SUM()

Se utilizó para sumar los precios de los tratamientos.

Ejemplo:

```sql
SELECT SUM(price) FROM treatments;
```

---

## AVG()

Se utilizó para calcular el promedio de precios.

Ejemplo:

```sql
SELECT AVG(price) FROM treatments;
```

---

## MIN() y MAX()

Permitieron identificar el precio mínimo y máximo de los tratamientos.

---

## GROUP BY

Se utilizó para agrupar información según categorías.

---

## HAVING

Se utilizó para filtrar grupos después del GROUP BY.

---

# Reportes Realizados

## Reporte 1 — Totales globales

Se calculó:

- cantidad total de tratamientos
- suma total de precios
- promedio de precios

---

## Reporte 2 — Valores extremos

Se identificó:

- precio mínimo
- precio máximo

---

## Reporte 3 — Agrupación por categorías

Se agruparon terapeutas según su especialidad utilizando GROUP BY.

---

## Reporte 4 — Filtro de grupos

Se mostraron terapeutas con registros asociados usando HAVING.

---

# Cómo ejecutar el proyecto

## Paso 1

Abrir la terminal en VS Code.

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
- insertar información
- utilizar funciones de agregación
- generar reportes con SQL
- aplicar GROUP BY y HAVING
- trabajar con SQLite en VS Code

---

# Autor

Emily Dayan Miranda Caceres