/* CREO BASE DE DATOS */

CREATE DATABASE	VentasTechDB;

-- ponemos en uso

USE VentasTechDB;

/* ============================
        PASO 1: Drop tables 
==============================*/

DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS categorias;

/* =============================
        PASO 2: Creo tablas 
===============================*/

-- Tabla Categoría
CREATE TABLE Categoria(
 id_categoria INT PRIMARY KEY,
 nombre_categoria VARCHAR (50) NOT NULL,
 descripción VARCHAR (200)
 )

 -- Tabla Clientes
 CREATE TABLE Clientes (
  id_cliente INT PRIMARY KEY,
  nombre VARCHAR (100) NOT NULL, 
  email VARCHAR (100) UNIQUE, 
  ciudad VARCHAR (50),
  fecha_registro DATE NOT NULL
  )

  --Tabla Productos
  CREATE TABLE Productos (
  id_producto INT PRIMARY KEY, 
  nombre_producto VARCHAR (100) NOT NULL, 
 id_categoria INT,
FOREIGN KEY (id_categoria)
    REFERENCES Categoria(id_categoria),
 precio DECIMAL (10,2) NOT NULL, 
 stock INT DEFAULT 0,
 activo BIT DEFAULT 1
 ) 

  --Tabla ventas
  CREATE TABLE Ventas (
  id_venta INT PRIMARY KEY,
    id_cliente INT,
    id_producto INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto),
    cantidad	INT	NOT NULL,
precio_unitario	DECIMAL(10,2)	NOT NULL,
fecha_venta	DATE	NOT NULL
)
/* =============================
        PASO 3: Inserto datos 
===============================*/

--Inserto Categoría
INSERT INTO Categoría (id_categoría,nombre_categoría,descripción) VALUES
  (1, 'Computación',    'Laptops, PCs y monitores'),
  (2, 'Accesorios',     'Periféricos y complementos'),
  (3, 'Audio',          'Auriculares y parlantes'),
  (4, 'Almacenamiento', 'Discos y memorias');

--Inserto Clientes
INSERT INTO Clientes (id_cliente,nombre,email,ciudad,fecha_registro) VALUES
(1, 'María López',  'maria@mail.com',  'Buenos Aires', '2024-01-05'),
  (2, 'Carlos Ruiz',  'carlos@mail.com', 'Córdoba',      '2024-01-10'),
  (3, 'Ana Gómez',    'ana@mail.com',    'Rosario',      '2024-02-01'),
  (4, 'Pedro Sanz',   'pedro@mail.com',  'Mendoza',      '2024-02-15'),
  (5, 'Laura Torres', 'laura@mail.com',  'Tucumán',      '2024-03-01');

--Inserto Productos
INSERT INTO Productos (id_producto,nombre_producto,id_categoria,stock,activo) VALUES
  (1, 'Laptop Pro 15',      1, 1200.00, 15, 1),
  (2, 'Mouse Inalámbrico',  2,   28.00, 80, 1),
  (3, 'Monitor 4K 27',      1,  450.00, 12, 1),
  (4, 'Auriculares BT Pro', 3,  120.00, 35, 1),
  (5, 'SSD Externo 1TB',    4,  130.00, 18, 1),
  (6, 'Teclado Mecánico',   2,   95.00, 40, 1);

--Inserto Ventas
INSERT INTO Ventas (id_venta,id_cliente,id_producto,cantidad,precio_unitario,fecha_venta) VALUES
  ( 1, 1, 1, 2, 1200.00, '2024-03-05'),
  ( 2, 2, 2, 5,   28.00, '2024-03-06'),
  ( 3, 3, 3, 1,  450.00, '2024-03-07'),
  ( 4, 1, 4, 2,  120.00, '2024-03-08'),
  ( 5, 4, 5, 3,  130.00, '2024-03-10'),
  ( 6, 2, 6, 4,   95.00, '2024-03-11'),
  ( 7, 5, 1, 1, 1200.00, '2024-03-12'),
  ( 8, 3, 2, 8,   28.00, '2024-03-13'),
  ( 9, 4, 4, 1,  120.00, '2024-03-14'),
  (10, 5, 3, 2,  450.00, '2024-03-15');

  /* =============================
        PASO 4: Validación
===============================*/
SELECT * FROM Categoría;   -- esperado: 4 filas
SELECT * FROM Clientes;     -- esperado: 5 filas
SELECT * FROM Productos;--esperado: 6 filas
SELECT * FROM Ventas     -- esperado: 10 filas