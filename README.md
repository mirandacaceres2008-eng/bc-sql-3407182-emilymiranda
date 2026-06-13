Proyecto SQL SPA — Semana 09 — JOINs

Dominio: Spa y Bienestar

Descripción

En esta actividad se aplicaron las operaciones INNER JOIN y LEFT JOIN para relacionar las tablas del dominio Spa y Bienestar. El objetivo fue generar reportes relacionales y detectar registros sin relaciones asociadas.

Tecnologías utilizadas

* SQLite
* SQL
* Visual Studio Code
* Git y GitHub

Estructura de la base de datos

La base de datos está compuesta por cuatro tablas relacionadas mediante claves foráneas:

clients

Almacena la información de los clientes.

* id
* full_name
* phone
* email
* notes

therapists

Contiene la información de los terapeutas.

* id
* full_name
* specialty

treatments

Guarda los tratamientos ofrecidos por el spa.

* id
* treatment_name
* duration_minutes
* price
* description

packages

Representa los paquetes adquiridos por los clientes y relaciona las demás tablas mediante claves foráneas.

* id
* client_id
* treatment_id
* therapist_id
* sessions
* status

Consultas realizadas

Consulta 1: INNER JOIN principal

Se realizó un INNER JOIN entre las tablas clients y packages para mostrar únicamente los clientes que poseen paquetes registrados.

Consulta 2: JOIN con tres tablas

Se relacionaron las tablas clients, packages, treatments y therapists para obtener un reporte con el nombre del cliente, el tratamiento recibido, el terapeuta encargado y la cantidad de sesiones.

Consulta 3: LEFT JOIN

Se utilizó LEFT JOIN para mostrar todos los clientes, incluso aquellos que no tienen paquetes asociados.

Consulta 4: Detección de registros huérfanos

Se aplicó un LEFT JOIN junto con la condición WHERE p.id IS NULL para identificar clientes sin paquetes registrados.

Consulta 5: Reporte agregado

Se combinaron LEFT JOIN, GROUP BY y COUNT para calcular la cantidad de paquetes asociados a cada cliente.

Conclusiones

Durante esta actividad se fortalecieron los conocimientos sobre relaciones entre tablas y el uso de JOINs en SQL. Además, se practicó la generación de reportes utilizando alias de tablas y columnas explícitas, evitando el uso de SELECT *.

Aprendizajes obtenidos

A lo largo de esta práctica se aprendió a trabajar con bases de datos relacionales mediante el uso de consultas INNER JOIN y LEFT JOIN. También se comprendió la importancia de las claves foráneas para relacionar tablas y generar reportes más completos.

Se adquirieron habilidades para:

* Relacionar múltiples tablas mediante JOINs.
* Utilizar alias para mejorar la legibilidad de las consultas.
* Detectar registros huérfanos utilizando LEFT JOIN y WHERE … IS NULL.
* Generar reportes agregados empleando GROUP BY y COUNT.
* Aplicar buenas prácticas en SQL evitando el uso de SELECT * y especificando únicamente las columnas necesarias.

Autor

Emily Dayan Miranda Cáceres

Bootcamp: BC-FastAPI
Dominio: Spa y Bienestar

Repositorio desarrollado como parte del proyecto de la Semana 09 — INNER JOIN y LEFT JOIN, aplicando consultas relacionales sobre una base de datos del dominio Spa y Bienestar.
