/* Esta consulta me esta mostrando el jefe del jefe del empleado */
SELECT empleado.nombre, empleado.apellido1, empleado.apellido2, jefe.nombre, jefe.apellido1, jefe.apellido2, jefe1.nombre, jefe1.apellido1, jefe1.apellido2
FROM empleado INNER JOIN empleado jefe
ON empleado.codigo_jefe = jefe.codigo_empleado
INNER JOIN empleado jefe1
ON jefe.codigo_jefe = jefe1.codigo_empleado;

/* Consulta simple que muestra quien no tiene jefe asignado porque será el maximo jefe */
SELECT nombre, apellido1, apellido2 FROM empleado
WHERE codigo_jefe IS NULL;

/* Esta consulta me esta mostrando el jefe del jefe del empleado alberto soria */
SELECT empleado.nombre, empleado.apellido1, empleado.apellido2, jefe.nombre, jefe.apellido1, jefe.apellido2, jefe1.nombre, jefe1.apellido1, jefe1.apellido2
FROM empleado INNER JOIN empleado jefe
ON empleado.codigo_jefe = jefe.codigo_empleado
INNER JOIN empleado jefe1
ON jefe.codigo_jefe = jefe1.codigo_empleado
WHERE empleado.nombre LIKE 'alberto' and empleado.apellido1 LIKE 'soria';