/* CONSULTAS DE BASE DE DATOS "empleados" */

/* Comprobaciones previas. Quiero ver con que estoy trabajando */
SELECT * FROM empleado;
SELECT * FROM departamento;

/* 01 Primer apellido de todos los empleados */
SELECT apellido1 FROM empleado;

/* 02 Primer apellido de empleados eliminando los apellidos repetidos */
SELECT DISTINCT apellido1 from empleado ;

/* 03 Todo de empleados */
SELECT * FROM empleado;

/* 04 Nombre y apellidos de todos los empleados */
SELECT nombre, apellido1, apellido2 FROM empleado;

/* 05 Codigo de departamentos de tabla empleados */
SELECT codigo_departamento FROM empleado;

/* 06 Codigo de departamentos de tabla empleados eliminando codigos repetidos*/
SELECT DISTINCT codigo_departamento FROM empleado;

/* 07 Nombre y apellidos de empleados en una columna */
SELECT concat_ws(" ", nombre, apellido1, apellido2) AS NombreApellido FROM empleado;

/* 08 Nombre y apellidos de empleados en una columna y en mayusculas */
SELECT upper(concat_ws(" ", nombre, apellido1, apellido2)) AS NombreApellido FROM empleado;

/* 09 Nombre y apellidos de empleados en una columna y en minusculas */
SELECT lower(concat_ws(" ", nombre, apellido1, apellido2)) AS NombreApellido FROM empleado;

/* 10 Lista el codigo junto al nif. nif en dos columnas digitos y legra*/
SELECT codigo, LEFT (nif, 8) AS Numeros, RIGHT (nif, 1) AS Letra FROM empleado;

/* 11 muestra nombre y presupuesto de departamento */
SELECT nombre, presupuesto-gastos FROM departamento;

/* 12 muestra nombre y presupuesto de departamento ordenado por presupuesto ascendente */
SELECT nombre, presupuesto FROM departamento ORDER BY presupuesto ASC;

/* 13 muestra el nombre de departamento ordenado por nombre ascendente */
SELECT nombre FROM departamento ORDER BY nombre ASC;

/* 14 Lo mismo pero descendente */
SELECT nombre FROM departamento ORDER BY nombre DESC;

/* 15 Muestra apellidos y nombre de empleado, ordenado por apellido ascendente */
SELECT apellido1, apellido2, nombre FROM empleado ORDER BY apellido1,apellido2,nombre ASC;

/* 16 Nombre y presupuesto de departamento ordenado por presupuesto descendiente (mas caros) y muestra solo 3 */
SELECT nombre, presupuesto FROM departamento ORDER BY presupuesto DESC LIMIT 3;

/* 17 Lo mismo pero los 3 mas baratos */
SELECT nombre, presupuesto FROM departamento ORDER BY presupuesto ASC LIMIT 3;

/* 18 Lo mismo que los presupuestos pero con gastos y solo mostrar 2 */
SELECT nombre, gastos FROM departamento ORDER BY gastos DESC LIMIT 2;

/* 19 Igual que el anterior pero ahora los 2 con menos gastos */
SELECT nombre, gastos FROM departamento ORDER BY gastos ASC LIMIT 2;

/* 20 Muestra los empleados de la fila 2 hasta la fila 2+5. Fila 0 es la primera (igual que los arrays en programacion) */
SELECT * FROM  empleado LIMIT 2,5;

/* 21 nombre departamento y presupuesto de los que tienen 150k€ o mas */
SELECT nombre, presupuesto FROM departamento WHERE presupuesto >= 150000;

/* 22 nombre departamento y gasto de los que tienen menos de 5000€ de gastos */
SELECT nombre, gastos FROM departamento WHERE gastos < 5000;

/* 23 nombre departamento y presupuesto tienen presupuesto entre 100k y 200k € sin BETWEEN */
SELECT nombre, presupuesto FROM departamento WHERE presupuesto >= 100000 AND presupuesto <= 200000;

/* 24 nombre departamento y presupuestos fuera de rango anterior. */
SELECT nombre, presupuesto FROM departamento WHERE presupuesto < 100000 OR presupuesto > 200000;

/* 25 nombre departamento y presupuesto entre 100k y 200k con BETWEEN */
/* The BETWEEN operator is inclusive: begin and end values are included. */
SELECT nombre, presupuesto FROM departamento WHERE presupuesto BETWEEN 100000 AND 200000;

/* 26 El 24 con between */
SELECT nombre, presupuesto FROM departamento WHERE presupuesto NOT BETWEEN 100000 AND 200000;

/* 27 nombre departamento, gasto y presupuesto de departamentos donde gasto mayor que presupuesto */
SELECT nombre, gastos, presupuesto FROM departamento WHERE gastos > presupuesto;

/* 28 lo mismo pero al reves. aqui estariamos bien, antes no */
SELECT nombre, gastos, presupuesto FROM departamento WHERE gastos < presupuesto;

/* 29 gastos = presupuesto... dificil de ver algo en esa consulta, salvo proyectos sin empezar  */
SELECT nombre, gastos, presupuesto FROM departamento WHERE gastos = presupuesto;

/* 30 todos los datos de los empleados con segundo apellido NULL */
SELECT * FROM empleado WHERE apellido2 IS NULL;

/* 31 todos los datos de los empleados con segundo apellido NOT NULL */
SELECT * FROM empleado WHERE apellido2 IS NOT NULL;

/* 32 todos los datos de los empleados con segundo apellido López */
SELECT * FROM empleado WHERE apellido2 LIKE 'López';

/* 33 todos los datos de empleados con 2ºapellido Díaz o Moreno sin usar IN */
SELECT * FROM empleado WHERE apellido2 LIKE 'Díaz' OR apellido2 LIKE 'Moreno';

/* 34  todos los datos de empleados con 2ºapellido Díaz o Moreno con IN*/
SELECT * FROM empleado WHERE apellido2 IN ('Díaz', 'Moreno');

/* 35 nombre, apellidos y nif de empleados que trabajan en departamento 3 */
SELECT nombre, apellido1, apellido2 FROM empleado WHERE codigo_departamento = 3;

/* 36 nombre y apellidos y nif de empleados que trabajan en 2, 4 o 5 */
SELECT nombre, apellido1, apellido2 FROM empleado WHERE codigo_departamento IN(2, 4, 5);