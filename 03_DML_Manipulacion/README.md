# DML — Manipulación de datos (INSERT / UPDATE / DELETE)

En esta carpeta están los scripts que muestran cómo poblar y modificar los datos de la base de datos para el proyecto.

Archivos principales

- `insert_data.sql` — Sentencias INSERT con datos de ejemplo para poblar las tablas.
- `update_delete.sql` — Ejemplos de sentencias UPDATE y DELETE que muestran operaciones de modificación y eliminación.

Orden recomendado de uso

1. Ejecutar primero los scripts DDL (`02_DDL_Tablas/create_database.sql`) para crear las tablas.
2. Ejecutar `insert_data.sql` para insertar datos de prueba.
3. Probar las consultas en `04_DQL_Consultas/select_queries.sql` para verificar los datos.
4. Ejecutar `update_delete.sql` 