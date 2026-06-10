Proyecto SQL SPA — Semana 07

Descripción

Este proyecto consiste en la creación de una base de datos relacional para un SPA utilizando SQLite.

Durante la actividad se trabajó con el manejo de valores NULL y la implementación de restricciones de integridad (Constraints) para garantizar la consistencia y calidad de los datos almacenados.

Los conceptos aplicados fueron:

* NULL
* IS NULL
* COALESCE
* NULLIF
* NOT NULL
* UNIQUE
* CHECK
* PRIMARY KEY
* FOREIGN KEY
* DEFAULT

El objetivo fue comprender cómo manejar valores desconocidos y cómo aplicar restricciones que permitan proteger la información de la base de datos.

⸻

Estructura de la Base de Datos

La base de datos contiene 4 tablas principales:

Tabla: clients

Almacena la información de los clientes del SPA.

Campos:

* id
* full_name
* phone
* email
* notes

Restricciones aplicadas:

* PRIMARY KEY
* UNIQUE
* NULL

⸻

Tabla: therapists

Almacena la información de los terapeutas y sus especialidades.

Campos:

* id
* full_name
* specialty

Restricciones aplicadas:

* PRIMARY KEY
* NOT NULL

⸻

Tabla: treatments

Contiene los tratamientos disponibles en el SPA.

Campos:

* id
* treatment_name
* duration_minutes
* price
* description

Restricciones aplicadas:

* PRIMARY KEY
* NOT NULL
* CHECK

⸻

Tabla: packages

Relaciona clientes, tratamientos y terapeutas.

Campos:

* id
* client_id
* treatment_id
* therapist_id
* sessions
* status

Restricciones aplicadas:

* PRIMARY KEY
* FOREIGN KEY
* NOT NULL
* CHECK
* DEFAULT

Además, esta tabla utiliza llaves foráneas para conectar las demás tablas.

⸻

Comandos SQL Utilizados

Durante el proyecto se utilizaron los siguientes comandos:

DDL (Definición de tablas)

* DROP TABLE
* CREATE TABLE

Estas instrucciones permitieron eliminar y volver a crear las tablas del sistema.

DML (Manipulación de datos)

* INSERT INTO

Se utilizaron para insertar registros en cada tabla.

⸻

Constraints Implementados

PRIMARY KEY

Se utilizó para identificar de forma única cada registro.

Ejemplo:

id INTEGER PRIMARY KEY

NOT NULL

Se utilizó para obligar el ingreso de información en campos importantes.

Ejemplo:

full_name TEXT NOT NULL

UNIQUE

Se utilizó para evitar registros duplicados.

Ejemplo:

email TEXT UNIQUE

CHECK

Se utilizó para validar valores permitidos.

Ejemplo:

price REAL CHECK(price > 0)

FOREIGN KEY

Se utilizó para relacionar tablas.

Ejemplo:

FOREIGN KEY (client_id)
REFERENCES clients(id)

DEFAULT

Se utilizó para asignar valores automáticos.

Ejemplo:

status TEXT DEFAULT 'Activo'

⸻

Manejo de Valores NULL

IS NULL

Se utilizó para identificar registros sin información.

Ejemplo:

SELECT id, full_name
FROM clients
WHERE notes IS NULL;

COALESCE

Se utilizó para reemplazar valores NULL por texto descriptivo.

Ejemplo:

SELECT
full_name,
COALESCE(notes,'Sin observaciones')
FROM clients;

NULLIF

Se utilizó para convertir valores específicos en NULL.

Ejemplo:

SELECT NULLIF(sessions,5)
FROM packages;

⸻

Consultas Realizadas

Consulta 1 — Registros con NULL

Se identificaron clientes que no poseen observaciones registradas.

Consulta 2 — Reemplazo de NULL

Se mostraron observaciones utilizando COALESCE para evitar valores vacíos.

Consulta 3 — Uso de NULLIF

Se evaluaron valores específicos convirtiéndolos a NULL cuando cumplían una condición determinada.

⸻

Cómo ejecutar el proyecto

Paso 1

Abrir la terminal en VS Code.

Paso 2

Ejecutar SQLite:

sqlite3.exe

Paso 3

Abrir la base de datos:

.open mi_dominio.db

Paso 4

Ejecutar el archivo SQL:

.read proyecto.sql

⸻

Aprendizajes

Con este proyecto se aprendió a:

* comprender el significado de NULL
* filtrar registros utilizando IS NULL
* reemplazar valores con COALESCE
* utilizar NULLIF
* aplicar restricciones de integridad
* crear relaciones mediante FOREIGN KEY
* validar datos mediante CHECK
* evitar duplicados con UNIQUE
* trabajar con SQLite en VS Code

⸻

Autor

Emily Dayan Miranda Cáceres
Ficha: 3407182

Bootcamp: bc-fastapi

Dominio: Spa y Bienestar