CREATE DATABASE IF NOT EXISTS tienda_online_db;
USE tienda_online_db;

-- TABLA CLIENTES
CREATE TABLE Clientes (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  direccion VARCHAR(255),
  correo VARCHAR(100) UNIQUE NOT NULL
);

-- TABLA PRODUCTOS
CREATE TABLE Productos (
  id_producto INT AUTO_INCREMENT PRIMARY KEY,
  nombre_producto VARCHAR(150) NOT NULL,
  descripcion TEXT,
  precio DECIMAL(10,2) NOT NULL CHECK (precio > 0),
  stock INT NOT NULL DEFAULT 0 CHECK (stock >= 0)
);

-- TABLA PEDIDOS
CREATE TABLE Pedidos (
  id_pedido INT AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT NOT NULL,
  fecha_pedido DATE NOT NULL,
  estado_pedido VARCHAR(50) NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- TABLA DETALLES_PEDIDO
CREATE TABLE Detalles_Pedido (
  id_detalle INT AUTO_INCREMENT PRIMARY KEY,
  id_pedido INT NOT NULL,
  id_producto INT NOT NULL,
  cantidad INT NOT NULL CHECK (cantidad > 0),
  subtotal DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
    ON DELETE CASCADE,
  FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
    ON DELETE CASCADE
);

-- TABLA PAGOS
CREATE TABLE Pagos (
  id_pago INT AUTO_INCREMENT PRIMARY KEY,
  id_pedido INT NOT NULL,
  fecha_pago DATE NOT NULL,
  monto_pago DECIMAL(10,2) NOT NULL,
  metodo_pago VARCHAR(50) NOT NULL,
  FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
    ON DELETE CASCADE
);
