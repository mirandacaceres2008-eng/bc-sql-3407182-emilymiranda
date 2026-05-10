# Proyecto SQL SPA — Semana 03

## Descripción

Este proyecto consiste en la creación y manipulación de una base de datos relacional para un SPA utilizando SQLite.

Durante la actividad se trabajaron operaciones DML (Data Manipulation Language) para insertar, actualizar y eliminar información almacenada en diferentes tablas.

Se utilizaron instrucciones SQL como:

- INSERT INTO
- UPDATE
- DELETE
- SELECT

El objetivo fue aprender a manipular datos dentro de una base de datos relacional respetando las relaciones entre tablas y las llaves foráneas.

---

# Estructura de la Base de Datos

La base de datos contiene 4 tablas principales relacionadas entre sí.

---

## Tabla: clients

Almacena la información de los clientes.

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

Contiene los tratamientos ofrecidos por el SPA.

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

Se utilizaron instrucciones para recrear las tablas.

Comandos:

- DROP TABLE
- CREATE TABLE

---

## DML (Manipulación de datos)

Se utilizaron instrucciones para insertar, actualizar y eliminar registros.

Comandos:

- INSERT INTO
- UPDATE
- DELETE
- SELECT

---

# Operaciones Realizadas

## Inserción de datos

Se insertaron registros en las tablas:

- clients
- therapists
- treatments
- packages

Utilizando la instrucción:

```sql
INSERT INTO
```

---

## Actualización de datos

Se realizaron diferentes actualizaciones utilizando UPDATE.

### Actualización de una columna

```sql
UPDATE clients
SET phone = '3209998877'
WHERE id = 1;
```

Se actualizó el número telefónico de un cliente específico.

---

### Actualización de múltiples columnas

```sql
UPDATE treatments
SET treatment_name = 'Masaje premium',
price = 150000
WHERE id = 1;
```

Se modificó el nombre y el precio de un tratamiento.

---

### Actualización de múltiples filas

```sql
UPDATE packages
SET sessions = sessions + 1
WHERE sessions < 5;
```

Se incrementó el número de sesiones para varios registros.

---

# Eliminación de datos

Antes de eliminar información se realizó una consulta de verificación.

### Verificación previa

```sql
SELECT id, full_name
FROM clients
WHERE id = 5;
```

---

### Eliminación del registro

```sql
DELETE FROM clients
WHERE id = 5;
```

Se eliminó un cliente específico de la tabla.

---

# Verificación Final

Se realizaron consultas SELECT para verificar la información final almacenada en cada tabla.

Ejemplo:

```sql
SELECT * FROM clients ORDER BY id;
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
- insertar información en SQLite
- actualizar registros con UPDATE
- eliminar registros con DELETE
- verificar información con SELECT
- trabajar con llaves foráneas
- manipular datos en bases de datos relacionales

---

# Autor

Emily Dayan Miranda Caceres