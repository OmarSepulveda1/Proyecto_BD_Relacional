-- Obtener todos los clientes
SELECT * FROM Clientes;

-- Obtener pedidos con nombre de cliente
SELECT p.id_pedido, c.nombre, c.apellido, p.fecha_pedido, p.estado_pedido
FROM Pedidos p
JOIN Clientes c ON p.id_cliente = c.id_cliente;

-- Obtener los productos de un pedido específico
SELECT d.id_pedido, pr.nombre_producto, d.cantidad, d.subtotal
FROM Detalles_Pedido d
JOIN Productos pr ON d.id_producto = pr.id_producto
WHERE d.id_pedido = 1;

-- Total de ventas por producto
SELECT pr.nombre_producto, SUM(d.cantidad) AS total_vendido, SUM(d.subtotal) AS total_venta
FROM Detalles_Pedido d
JOIN Productos pr ON d.id_producto = pr.id_producto
GROUP BY pr.nombre_producto;

-- Pedidos realizados por un cliente específico
SELECT p.id_pedido, p.fecha_pedido, p.estado_pedido, p.total
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente
WHERE c.nombre = 'Laura';


