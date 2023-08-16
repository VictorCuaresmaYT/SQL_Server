create database tablasejmp
use tablasejmp;

/* Tabla Basica */
CREATE TABLE tabla_basica (
   columna1 INT,
   columna2 VARCHAR(50),
   columna3 DATE
);

SELECT * FROM tabla_basica;



/*Tabla temporal local*/
CREATE TABLE #TempVentas (
  id INT IDENTITY(1,1) PRIMARY KEY,
  fecha_venta DATE,
  monto FLOAT,
  sucursal VARCHAR(50)
);

SELECT * FROM #TempVentas;



/*Tabla temporal global*/
CREATE TABLE TempsVentas (
  id INT IDENTITY(1,1) PRIMARY KEY,
  fecha_venta DATE,
  monto FLOAT,
  sucursal VARCHAR(50)
);

SELECT * FROM TempsVentas;


/*Tabla con restricciones únicas:*/
CREATE TABLE Clientes (
  id INT IDENTITY(1,1) PRIMARY KEY,
  nombre VARCHAR(50),
  email VARCHAR(50) UNIQUE,
  telefono VARCHAR(20) UNIQUE
);

SELECT * FROM Clientes;

/*Tabla con restricciones de clave foránea*/
CREATE TABLE Pedidos (
  id INT IDENTITY(1,1) PRIMARY KEY,
  fecha_pedido DATE,
  cliente_id INT,
  FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

SELECT * FROM Pedidos;

/*Tabla con columnas calculadas: */
CREATE TABLE tabla_con_columna_calculada (
   id INT PRIMARY KEY,
   columna1 INT,
   columna2 INT,
   columna3 AS (columna1 + columna2)
);

SELECT * FROM tabla_con_columna_calculada;

/*Tabla con restricciones de comprobación*/
CREATE TABLE tabla_con_restriccion_comprobacion (
   id INT PRIMARY KEY,
   columna1 INT CHECK (columna1 > 0),
   columna2 VARCHAR(50)
);

SELECT * FROM tabla_con_restriccion_comprobacion;

/*Gracias*/

