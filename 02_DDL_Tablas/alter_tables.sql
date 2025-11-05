
-- Agregar columnas nuevas
ALTER TABLE clientes
ADD COLUMN fecha_registro DATE DEFAULT (CURRENT_DATE);

ALTER TABLE productos
ADD COLUMN stock INT NOT NULL DEFAULT 0;

ALTER TABLE pedidos
ADD COLUMN estado VARCHAR(50) DEFAULT 'Pendiente';

-- Deshacer cambios (opcional)
-- ROLLBACK; 