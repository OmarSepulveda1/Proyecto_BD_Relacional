# DDL — Creación y estructura de tablas

Esta carpeta contiene los scripts DDL (Data Definition Language) usados para crear y modificar la estructura de la base de datos del proyecto.

Archivos principales

- `create_database.sql` — Script principal para crear la base de datos y las tablas necesarias (tablas, claves primarias, foráneas, índices básicos).
- `alter_tables.sql` — Cambios posteriores a la creación inicial: alteraciones de tablas, creación de índices adicionales o ajustes de constraints.

Recomendación de ejecución

1. Ejecutar `create_database.sql` en una base de datos de prueba o en el servidor objetivo para crear las tablas.
2. Ejecutar `alter_tables.sql` si necesitas aplicar modificaciones que no estaban presentes en el script inicial.
