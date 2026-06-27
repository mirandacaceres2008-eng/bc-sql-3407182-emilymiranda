# Proyecto SQL SPA y Bienestar — Semana 09 — JOINs

## Descripción del proyecto

En esta actividad se aplicaron las operaciones `INNER JOIN` y `LEFT JOIN` sobre el dominio **Spa y Bienestar** con el objetivo de relacionar diferentes tablas de la base de datos y generar consultas más completas y útiles para la gestión de la información.

El proyecto permite relacionar clientes, terapeutas, tratamientos y paquetes contratados, simulando el funcionamiento básico de un spa o centro de bienestar.

---

## Objetivo

Aplicar los conceptos de `INNER JOIN` y `LEFT JOIN` para:

* Relacionar información entre varias tablas.
* Obtener reportes combinando diferentes entidades del sistema.
* Detectar registros sin relaciones asociadas.
* Generar consultas agregadas utilizando `COUNT()`.

---

## Tecnologías utilizadas

* SQLite
* SQL
* Visual Studio Code
* Git
* GitHub

---

## Estructura de la base de datos

La base de datos está compuesta por las siguientes tablas:

### clients

Almacena la información de los clientes del spa.

Campos principales:

* id
* full_name
* phone
* email
* notes

### therapists

Contiene la información de los terapeutas y sus especialidades.

Campos principales:

* id
* full_name
* specialty

### treatments

Registra los tratamientos ofrecidos por el spa.

Campos principales:

* id
* treatment_name
* duration_minutes
* price
* description

### packages

Relaciona clientes, tratamientos y terapeutas mediante los paquetes contratados.

Campos principales:

* id
* client_id
* treatment_id
* therapist_id
* sessions
* status

---

## Consultas realizadas

### Consulta 1 — INNER JOIN principal

Se relacionaron las tablas `packages` y `treatments` para mostrar los tratamientos incluidos en cada paquete y la cantidad de sesiones contratadas.

### Consulta 2 — JOIN con múltiples tablas

Se realizó una consulta utilizando cuatro tablas relacionadas (`clients`, `packages`, `treatments` y `therapists`) para obtener un reporte completo de clientes, tratamientos y terapeutas asignados.

### Consulta 3 — LEFT JOIN

Se utilizaron todos los tratamientos registrados, incluso aquellos que no tenían paquetes asociados.

### Consulta 4 — Detección de registros huérfanos

Se identificaron los tratamientos que no estaban asociados a ningún paquete utilizando `LEFT JOIN` y `WHERE ... IS NULL`.

### Consulta 5 — Reporte agregado

Se contó la cantidad de paquetes asociados a cada tratamiento utilizando `COUNT()` y `GROUP BY`.

---

## Aprendizajes obtenidos

Durante esta actividad aprendí a:

* Utilizar `INNER JOIN` para combinar registros relacionados.
* Utilizar `LEFT JOIN` para incluir registros sin relación.
* Detectar registros huérfanos mediante `IS NULL`.
* Crear reportes utilizando funciones de agregación como `COUNT()`.
* Diseñar consultas más complejas involucrando múltiples tablas.

---

## Conclusión

La implementación de JOINs permitió obtener información más completa y organizada del sistema Spa y Bienestar. Estas consultas son fundamentales para generar reportes y facilitar la gestión de clientes, tratamientos y terapeutas dentro de una base de datos relacional.

---

## Autor

**Emily Dayan Miranda Cáceres**

Proyecto académico correspondiente a la **Semana 09 — INNER JOIN y LEFT JOIN**.
