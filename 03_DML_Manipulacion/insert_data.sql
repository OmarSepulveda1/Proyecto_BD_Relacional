INSERT INTO Clientes (nombre, apellido, direccion, correo)
VALUES 
('Laura', 'Pérez', 'Calle 123', 'laura.perez@mail.com'),
('Carlos', 'Ramos', 'Av. Libertad 56', 'carlos.ramos@mail.com');

INSERT INTO Productos (nombre_producto, descripcion, precio, stock)
VALUES 
('Teclado mecánico', 'Switch azul', 60.00, 15),
('Mouse inalámbrico', 'Mouse óptico con receptor USB', 20.00, 30);

INSERT INTO Pedidos (id_cliente, fecha_pedido, estado_pedido)
VALUES 
(1, '2025-10-20', 'Pendiente'),
(2, '2025-10-21', 'Enviado');

INSERT INTO Detalles_Pedido (id_pedido, id_producto, cantidad, subtotal)
VALUES 
(1, 1, 1, 60.00),
(2, 2, 2, 40.00);

INSERT INTO Pagos (id_pedido, fecha_pago, monto_pago, metodo_pago)
VALUES 
(1, '2025-10-20', 60.00, 'Tarjeta'),
(2, '2025-10-21', 40.00, 'Efectivo');
