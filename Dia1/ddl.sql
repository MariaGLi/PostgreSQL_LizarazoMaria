CREATE DATABASE TallerCasa
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'es-CO'
    LC_CTYPE = 'es-CO'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE fabricante (
	codigo INTEGER PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE producto (
	codigo INTEGER PRIMARY KEY,
	nombre VARCHAR(100),
	precio NUMERIC(10,2),
	codigo_fabricante INTEGER,
    foreign key (codigo_fabricante) references fabricante(codigo)
);

INSERT INTO fabricante (codigo, nombre) VALUES
(1, 'Asus'),
(2, 'Lenovo'),
(3, 'Hewlett-Packard'),
(4, 'Samsung'),
(5, 'Seagate'),
(6, 'Crucial'),
(7, 'Gigabyte'),
(8, 'Huawei'),
(9, 'Xiaomi');

INSERT INTO producto (codigo, nombre, precio, codigo_fabricante) VALUES
(1, 'Disco duro SATA3 1TB', 86.99, 5),
(2, 'Memoria RAM DDR4 8G', 120, 6),
(3, 'Disco SSD 1TB', 150.99, 4),
(4, 'GeForce GTX 1050Ti', 185, 7),
(5, 'GeForce GTX 1080 Xtreme', 755, 6),
(6, 'Monitor 24 LED Full HD', 202, 1),
(7, 'Monitor 27 LED Full HD', 245.99, 1),
(8, 'Portatil Yoga 520', 559, 2),
(9, 'Portatil Ideapd 320', 444, 2),
(10, 'Impresora HP Deskjet 3720', 59.99, 3),
(11, 'Impresora HP Laserjet Pro M26nw', 180, 3);


-- Consultas sobre una tabla

-- 1. Lista el nombre de todos los productos que hay en la tabla producto.
select nombre from producto;

-- 2. Lista los nombres y los precios de todos los productos de la tabla producto.
select nombre, precio from  producto;

-- 3. Lista todas las columnas de la tabla producto.
select * from producto;

-- 4. Lista el nombre de los productos, el precio en euros y el precio en dólares 
-- estadounidenses (USD).
select nombre, precio as Precio_USD, ROUND(precio * 0.92) as Precio_EUR from producto;

-- 5. Lista el nombre de los productos, el precio en euros y el precio en dólares
-- estadounidenses (USD). Utiliza los siguientes alias para las columnas: nombre 
-- de producto, euros, dólares.
select nombre as nombre_producto, precio as dólares, ROUND(precio * 0.92) as euros from producto;

-- 6. Lista los nombres y los precios de todos los productos de la tabla producto,
-- convirtiendo los nombres a mayúscula.
select UPPER(nombre) as nombre, precio from producto;

-- 7. Lista los nombres y los precios de todos los productos de la tabla producto,
-- convirtiendo los nombres a minúscula.
select LOWER(nombre) as nombre, precio from producto;

-- 8. Lista el nombre de todos los fabricantes en una columna, y en otra columna
-- obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.
select nombre, UPPER(SUBSTRING(nombre from 1 for 2)) as iniciales from fabricante;

-- 9. Lista los nombres y los precios de todos los productos de la tabla producto,
-- redondeando el valor del precio.
select nombre, ROUND(precio) as precio from producto;

-- 10. Lista los nombres y los precios de todos los productos de la tabla producto,
-- truncando el valor del precio para mostrarlo sin ninguna cifra decimal.
select nombre, TRUNC(precio) from producto;

-- 11. Lista el identificador de los fabricantes que tienen productos en la
-- tabla producto.
select codigo_fabricante from producto;

-- 12. Lista el identificador de los fabricantes que tienen productos en la
-- tabla producto, eliminando los identificadores que aparecen repetidos.
select distinct codigo_fabricante from producto;

-- 13. Lista los nombres de los fabricantes ordenados de forma ascendente.
select nombre from fabricante order by 1 asc;

-- 14. Lista los nombres de los fabricantes ordenados de forma descendente.
select nombre from fabricante order by 1 desc;

-- 15. Lista los nombres de los productos ordenados en primer lugar por el
-- nombre de forma ascendente y en segundo lugar por el precio de forma descendente.
select nombre, precio from producto order by 1 asc, 2 desc;

-- 16. Devuelve una lista con las 5 primeras filas de la tabla fabricante.
select * from fabricante limit  5;

-- 17. Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante.
-- La cuarta fila también se debe incluir en la respuesta.
select * from fabricante offset 3 limit 2;

-- 18. Lista el nombre y el precio del producto más barato. (Utilice solamente las
-- cláusulas ORDER BY y LIMIT)
select nombre, precio from producto order by 2 asc limit 1;

-- 19. Lista el nombre y el precio del producto más caro. (Utilice solamente las
-- cláusulas ORDER BY y LIMIT)
select nombre, precio from producto order by 2 desc limit 1;

-- 20. Lista el nombre de todos los productos del fabricante cuyo identificador de
-- fabricante es igual a 2.
select nombre, codigo_fabricante from producto where codigo_fabricante = 2;
select nombre from fabricante f where f.codigo = 2;

-- 21. Lista el nombre de los productos que tienen un precio menor o igual a 120€.
select nombre, ROUND(precio * 0.92) as Precio_EUR from producto where precio <= 120 order by 2 desc;

-- 22. Lista el nombre de los productos que tienen un precio mayor o igual a 400€.
select nombre, ROUND(precio * 0.92) as Precio_EUR from producto where precio >= 400 order by 2 desc;

-- 23. Lista el nombre de los productos que no tienen un precio mayor o igual a 400€.
select nombre, ROUND(precio * 0.92) as Precio_EUR from producto where precio <= 400 order by 2 desc;

-- 24. Lista todos los productos que tengan un precio entre 80€ y 300€. Sin utilizar
-- el operador BETWEEN.
select nombre, ROUND(precio * 0.92) as Precio_EUR from producto where precio > 80 and precio < 300 order by 2 desc;

-- 25. Lista todos los productos que tengan un precio entre 60€ y 200€. Utilizando
-- el operador BETWEEN.
select nombre, ROUND(precio * 0.92) as Precio_EUR from producto where precio between 60 and 200 order by 2 desc;

-- 26. Lista todos los productos que tengan un precio mayor que 200€ y que el
-- identificador de fabricante sea igual a 6.
select nombre, ROUND(precio * 0.92) as Precio_EUR from producto where precio > 200 and codigo_fabricante = 6;

-- 27. Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5.
-- Sin utilizar el operador IN.
select  nombre, codigo_fabricante from producto p where p.codigo_fabricante = 1 or p.codigo_fabricante = 3 or p.codigo_fabricante = 5 order by 2 asc;

-- 28. Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5.
-- Utilizando el operador IN.
select  nombre, codigo_fabricante from producto p where p.codigo_fabricante in(1,3,5) order by 2 asc;

-- 29. Lista el nombre y el precio de los productos en céntimos (Habrá que
-- multiplicar por 100 el valor del precio). Cree un alias para la columna que
-- contiene el precio que se llame céntimos.
select nombre, ROUND(precio * 100) as centimos from producto order by 2 asc;

-- 30. Lista los nombres de los fabricantes cuyo nombre empiece por la letra S.
select nombre from fabricante where nombre like 'S%';

-- 31. Lista los nombres de los fabricantes cuyo nombre termine por la vocal e.
select nombre from fabricante where nombre similar to '%e';

-- 32. Lista los nombres de los fabricantes cuyo nombre contenga el carácter w.
select nombre from fabricante where nombre like '%w%';

-- 33. Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres.
select nombre from fabricante where length(nombre) = 4;

-- 34. Devuelve una lista con el nombre de todos los productos que contienen la
-- cadena Portátil en el nombre.
select nombre from producto where nombre like '%Portatil%';

-- 35. Devuelve una lista con el nombre de todos los productos que contienen la
-- cadena Monitor en el nombre y tienen un precio inferior a 215 €.
select nombre, ROUND(precio * 0.92) as Precio_EUR from producto where nombre like '%Monitor%' and precio < 215;

-- 36. Lista el nombre y el precio de todos los productos que tengan un precio
-- mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en
-- orden descendente) y en segundo lugar por el nombre (en orden
-- ascendente).
select nombre, ROUND(precio * 0.92) as Precio_EUR from producto where precio >= 180 order by 2 desc, 1 asc;


-- Consultas multitabla (Composición interna)

-- 1. Devuelve una lista con el nombre del producto, precio y nombre de
-- fabricante de todos los productos de la base de datos.
select p.nombre as nombre_producto, p.precio, f.nombre as nombre_fabricante from producto p
inner join fabricante f on p.codigo_fabricante = f.codigo;

-- 2. Devuelve una lista con el nombre del producto, precio y nombre de
-- fabricante de todos los productos de la base de datos. Ordene el resultado
-- por el nombre del fabricante, por orden alfabético.
select p.nombre as nombre_producto, p.precio, f.nombre as nombre_fabricante from producto p
inner join fabricante f on p.codigo_fabricante = f.codigo order by 3 asc;

-- 3. Devuelve una lista con el identificador del producto, nombre del producto,
-- identificador del fabricante y nombre del fabricante, de todos los productos
-- de la base de datos.
select p.codigo, p.nombre as nombre_producto, f.codigo, f.nombre as nombre_fabricante from producto p
inner join fabricante f on p.codigo_fabricante = f.codigo;

-- 4. Devuelve el nombre del producto, su precio y el nombre de su fabricante,
-- del producto más barato.
select p.nombre as nombre_producto, p.precio, f.nombre as nombre_fabricante from producto p
inner join fabricante f ON f.codigo = p.codigo_fabricante order by 2 asc limit 1;

-- 5. Devuelve el nombre del producto, su precio y el nombre de su fabricante,
-- del producto más caro.
select p.nombre as nombre_producto, p.precio, f.nombre as nombre_fabricante from producto p
inner join fabricante f ON f.codigo = p.codigo_fabricante order by 2 desc limit 1;

-- 6. Devuelve una lista de todos los productos del fabricante Lenovo.
select p.nombre as nombre_producto, p.codigo_fabricante, f.nombre as nombre_fabricante from producto p
inner join fabricante f ON f.codigo = p.codigo_fabricante where f.nombre like '%Lenovo%';

-- 7. Devuelve una lista de todos los productos del fabricante Crucial que tengan
-- un precio mayor que 200€.
select p.nombre as nombre_producto, ROUND(p.precio * 0.92) as Precio_EUR, f.nombre as nombre_fabricante from producto p
inner join fabricante f ON f.codigo = p.codigo_fabricante where f.nombre like '%Crucial%' and p.precio > 200;

-- 8. Devuelve un listado con todos los productos de los
-- fabricantes Asus, Hewlett-Packardy Seagate. Sin utilizar el operador IN.
select p.*, f.nombre as nombre_fabricante from producto p
inner join fabricante f ON f.codigo = p.codigo_fabricante 
where f.nombre = 'Asus' OR f.nombre = 'Hewlett-Packard' OR f.nombre = 'Seagate';

-- 9. Devuelve un listado con todos los productos de los fabricantes Asus,
-- Hewlett-Packardy Seagate. Utilizando el operador IN.
select p.*, f.nombre as nombre_fabricante from producto p
inner join fabricante f ON f.codigo = p.codigo_fabricante 
where f.nombre in('Asus', 'Hewlett-Packard', 'Seagate');

-- 10. Devuelve un listado con el nombre y el precio de todos los productos de 
-- los fabricantes cuyo nombre termine por la vocal e.
select p.nombre as nombre_producto, p.precio, f.nombre from producto p 
inner join fabricante f ON p.codigo_fabricante = f.codigo where f.nombre like '%e'

-- 11. Devuelve un listado con el nombre y el precio de todos los productos cuyo
-- nombre de fabricante contenga el carácter w en su nombre.
select p.nombre as nombre_producto, p.precio, f.nombre as nombre_fabricante from producto p 
inner join fabricante f ON p.codigo_fabricante = f.codigo where f.nombre like '%w%'

-- 12. Devuelve un listado con el nombre de producto, precio y nombre de 
-- fabricante, de todos los productos que tengan un precio mayor o igual a 180€.
-- Ordene el resultado en primer lugar por el precio (en orden descendente) y 
-- en segundo lugar por el nombre (en orden ascendente)

select p.nombre as nombre_producto, ROUND(p.precio * 0.92) as Precio_EUR, f.nombre as nombre_fabricante from producto p 
inner join fabricante f ON p.codigo_fabricante = f.codigo
where p.precio >= 180 order by 2 desc, 1 asc;

-- 13. Devuelve un listado con el código y el nombre de fabricante, solamente de
-- aquellos fabricantes que tienen productos asociados en la base de datos.

select distinct f.codigo, f.nombre as nombre_fabricante from producto p 
inner join fabricante f ON p.codigo_fabricante = f.codigo;