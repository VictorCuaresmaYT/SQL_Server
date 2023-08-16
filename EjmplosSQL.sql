create database tablasejmp
use tablasejmp;

/* Tabla Basica */
CREATE TABLE tabla_basica (
   columna1 INT,
   columna2 VARCHAR(50),
   columna3 DATE
);


/*Tabla temporal local*/
CREATE TABLE #tabla_temporal_local (
   columna1 INT,
   columna2 VARCHAR(50),
   columna3 DATE
);


/*Tabla temporal global*/
CREATE TABLE ##tabla_temporal_global (
   columna1 INT,
   columna2 VARCHAR(50),
   columna3 DATE
);

/*Tabla particionada*/
CREATE TABLE tabla_particionada (
   columna1 INT,
   columna2 VARCHAR(50),
   columna3 DATE
) PARTITION BY RANGE(columna1) (
   PARTITION p1 VALUES LESS THAN (100),
   PARTITION p2 VALUES LESS THAN (200),
   PARTITION p3 VALUES LESS THAN (MAXVALUE)
);

/*Tabla con restricciones únicas:*/
CREATE TABLE tabla_con_restriccion_unica (
   id INT PRIMARY KEY,
   columna1 INT UNIQUE,
   columna2 VARCHAR(50)
);


/*Tabla con restricciones de clave foránea*/
CREATE TABLE tabla_con_restriccion_foranea (
   id INT PRIMARY KEY,
   columna1 INT,
   columna2 VARCHAR(50),
   FOREIGN KEY (columna1) REFERENCES otra_tabla(columna1)
);

/*Tabla con columnas calculadas: */
CREATE TABLE tabla_con_columna_calculada (
   id INT PRIMARY KEY,
   columna1 INT,
   columna2 INT,
   columna3 AS (columna1 + columna2)
);


/*Tabla con restricciones de comprobación*/
CREATE TABLE tabla_con_restriccion_comprobacion (
   id INT PRIMARY KEY,
   columna1 INT CHECK (columna1 > 0),
   columna2 VARCHAR(50)
);

/*Gracias*/

