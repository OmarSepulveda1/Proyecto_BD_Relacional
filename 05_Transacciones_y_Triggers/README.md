# Transacciones y Triggers — Proyecto_BD_Relacional

En esta carpeta encontrarás ejemplos y scripts que muestran el uso de transacciones (BEGIN / COMMIT / ROLLBACK) y triggers definidos en la base de datos.

Archivos principales

- `transactions_triggers.sql` — Ejemplos prácticos de:
  - Uso de transacciones para agrupar operaciones y garantizar atomicidad.
  - Triggers que se ejecutan ante eventos (AFTER INSERT, BEFORE UPDATE, etc.) para mantener integridad o registrar auditoría.

Orden recomendado de revisión/ejecución

1. Asegúrate de tener la base de datos y las tablas creadas e pobladas (`02_DDL_Tablas/create_database.sql` y `03_DML_Manipulacion/insert_data.sql`).
2. Revisa el contenido de `transactions_triggers.sql` para entender qué operaciones y triggers se muestran.
3. Ejecuta las secciones de transacciones en una base de datos de prueba. Usa ROLLBACK cuando quieras deshacer los cambios de prueba.
4. Habilita o prueba triggers en un entorno de prueba antes de aplicarlos en producción.
