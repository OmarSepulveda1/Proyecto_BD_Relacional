-- Actualizar dirección de cliente
UPDATE Clientes SET direccion = 'Av. Reforma 200' WHERE id_cliente = 1;

-- Actualizar estado de pedido
UPDATE Pedidos SET estado_pedido = 'Entregado' WHERE id_pedido = 1;

-- Eliminar pedido no procesado
DELETE FROM Pedidos WHERE estado_pedido = 'Pendiente';
