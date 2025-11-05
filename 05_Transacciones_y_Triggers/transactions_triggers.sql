DELIMITER $$

-- Trigger: reducir stock cuando se inserta un detalle de pedido
CREATE TRIGGER trg_actualizar_stock AFTER INSERT ON Detalles_Pedido
FOR EACH ROW
BEGIN
    UPDATE Productos
    SET stock = stock - NEW.cantidad
    WHERE id_producto = NEW.id_producto;
END$$

DELIMITER ;

-- Transacción: registrar venta completa
START TRANSACTION;

INSERT INTO Pedidos (id_cliente, fecha_pedido, estado_pedido)
VALUES (1, CURDATE(), 'Pagado');

SET @last_pedido = LAST_INSERT_ID();

INSERT INTO Detalles_Pedido (id_pedido, id_producto, cantidad, subtotal)
VALUES (@last_pedido, 1, 1, 60.00);

INSERT INTO Pagos (id_pedido, fecha_pago, monto_pago, metodo_pago)
VALUES (@last_pedido, CURDATE(), 60.00, 'Tarjeta');

COMMIT;


-- ROLLBACK;
-- Si se desea deshacer la transacción, descomentar la línea de ROLLBACK