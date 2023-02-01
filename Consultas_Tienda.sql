/* CONSULTA DE BASE DE DATOS 'tienda' */

/* 19 */
SELECT nombre, precio FROM producto
ORDER BY precio DESC
LIMIT 1;


##20. Lista el nombre de todos los productos del fabricante cuyo código…
	
SELECT nombre FROM producto
WHERE codigo = 2;

##21. Lista el nombre de los productos que tienen un precio menor o igual a 120€

SELECT nombre 
	from producto
	where precio <=120;

## 22. Lista el nombre de todos los productos que tienen un precio mayor o igual a ##400

SELECT nombre FROM producto
WHERE precio >= 400;

##23 Lista el nombre de los productos que no tiene un precio mayor o igual a 400€

SELECT nombre 
	from producto
	where precio <400;

## 24. Lista todos los productos que tengan un precio entre 80 y 300 sin BETWEEN

SELECT nombre 
FROM producto
WHERE precio >= 80 AND precio <= 300;
	

##25 Lista todos los productos que tengan un precio entre 60 y 200.

SELECT *
	from producto
	where precio between 60 and 200;


##26. Lista todos los productos que tengan un precio mayor que 200 y que el codigo #de fabr sea 6

SELECT nombre FROM producto
WHERE precio > 200 AND codigo_fabricante = 6;

##27 Lista todos los productos donde el codigo de fabricante sea 1,3 o 5 sin utilizar ##el operador IN
  
SELECT *
    from producto
    where codigo_fabricante = 1 or codigo_fabricante = 3 or codigo_fabricante = 5;

##28. Lista todos los productos donde el codigo de fabricante sea 1, 3 o 5 utilizando ##IN

SELECT nombre 
FROM producto
WHERE codigo_fabricante IN (1,3,5);

#29 Lista el nombre y el precio de los productos en centimos. Con un alias

SELECT nombre, precio * 100 as Centimos
FROM producto;

##30. Lista los nombres de los fabricantes cuyo nombre empiece por la letra s

SELECT nombre 
FROM fabricante
WHERE nombre LIKE 's%';

##31 Lista los nombres de los fabricantes cuyo nombre termine por la vocal e

SELECT nombre
from fabricante
where nombre like '%e';

## 32. Lista los nombres de los fabricantes cuyo nombre contenga 'w'

SELECT nombre 
FROM fabricante
WHERE nombre LIKE '%w%';


##33 Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres

SELECT nombre
from fabricante
where nombre like '____';

## 34. Lista los nombres de los fabricantes cuyo nombre contenga 'w'

SELECT nombre 
FROM producto
WHERE nombre LIKE '%Portátil%';

##35 Devuelve una lista con el nombre de todos los productos que contienen la ##cadena monitor en el nombre y tiene un precio inferior a 125

SELECT nombre
    from producto
    where nombre like '%monitor%' and precio < 215;

## 36. Lista el nombre y el precio de todos los productos...

SELECT nombre, precio 
FROM producto
WHERE precio >= 180 ORDER BY precio DESC, nombre ASC;
