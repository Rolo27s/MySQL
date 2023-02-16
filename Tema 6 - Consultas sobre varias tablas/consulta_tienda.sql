/* EJERCICIOS DE CONSULTA DE TIENDA */
/* 1. */ 
SELECT p.nombre, p.precio, f.nombre
FROM producto p, fabricante f
WHERE p.codigo_fabricante = f.codigo
ORDER BY 3; /* El order by 3 ordena ascendente por defecto y el 3 es la tercera columna */

/* 1b. lo mismo que antes pero con inner join */
SELECT p.nombre, p.precio, f.nombre
FROM producto p INNER JOIN fabricante f
ON p.codigo_fabricante = f.codigo
ORDER BY 3;

/* 2. el ejercicio dos esta hecho */

/* 3. */
SELECT p.codigo, p.nombre, f.codigo, f.nombre
FROM producto p INNER JOIN fabricante f
ON p.codigo_fabricante = f.codigo;

/* 4.a */
SELECT p.nombre, p.precio, f.nombre
FROM producto p, fabricante f
WHERE p.codigo_fabricante = f.codigo
ORDER BY 2
LIMIT 1;

/* 4.b */
SELECT p.nombre, p.precio, f.nombre
FROM producto p INNER JOIN fabricante f
ON p.codigo_fabricante = f.codigo
ORDER BY 2
LIMIT 1;

/* 5a. */
SELECT p.nombre, p.precio, f.nombre
FROM producto p, fabricante f
WHERE p.codigo_fabricante = f.codigo
ORDER BY 2 DESC
LIMIT 1;

/* 5b. */
SELECT p.nombre, p.precio, f.nombre
FROM producto p INNER JOIN fabricante f
ON p.codigo_fabricante = f.codigo
ORDER BY 2 DESC
LIMIT 1;

/* 6a */
SELECT p.*, f.nombre
FROM producto p, fabricante f
WHERE p.codigo_fabricante=f.codigo
AND f.nombre='Lenovo';

/* 6b */
SELECT p.*, f.nombre
FROM producto p INNER JOIN fabricante f
ON p.codigo_fabricante=f.codigo
WHERE f.nombre='Lenovo';

/* terminar las consultas que faltan */