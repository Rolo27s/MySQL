/* INTERSECCION */
/* Modo clasico */
SELECT * FROM empleado, departamento
WHERE empleado.codigo_departamento = departamento.codigo;

/* -------------------------------------------------------------- */

/* Modo nuevo con JOIN */
SELECT * FROM empleado inner join departamento
ON empleado.codigo_departamento = departamento.codigo;

/* COMPOSICIONES CRUZADAS */
/* Ana nunca lo ha usado */
SELECT * FROM empleado CROSS JOIN departamento;

/* COMPOSICIONES INTERNAS */
/* Hace lo mismo */
SELECT * FROM empleado INNER JOIN departamento;
/* Desaconsejado */
SELECT * FROM empleado NATURAL JOIN departamento;

/* COMPOSICIONES EXTERNAS - PDF DIAGRAMAS DE APOYO */
/* Saca todos los elementos de la tabla de la izquierda. En este caso empleado */
/* LEFT JOIN Y LEFT OUTER JOIN ES LO MISMO */
SELECT * FROM empleado LEFT JOIN departamento
ON empleado.codigo_departamento = departamento.codigo;

/* Saca todos los elementos de la tabla de la derecha. En este caso departamento */
/* Se ve al final Proyectos y publicidad que no tienen empleados asignados */
SELECT * FROM empleado RIGHT JOIN departamento
ON empleado.codigo_departamento = departamento.codigo;

/* FULL OUTER JOIN no implementado en MySQL - PARCHE → UNION(LEFT JOIN, RIGHT JOIN)*/
SELECT * FROM empleado LEFT JOIN departamento
ON empleado.codigo_departamento = departamento.codigo
UNION
SELECT * FROM empleado RIGHT JOIN departamento
ON empleado.codigo_departamento = departamento.codigo;

/* USANDO ALIAS EN LAS TABLAS */
SELECT * FROM empleado e LEFT JOIN departamento d
ON e.codigo_departamento = d.codigo
UNION
SELECT * FROM empleado emp RIGHT JOIN departamento dep
ON emp.codigo_departamento = dep.codigo;

/* me pierdo algo de order by no se que...*/

/* DE LA BASE DE DATOS JARDINERIA mezclamos 3 tablas con 3 codigos */
/* Estoy viendo los asesores de los clientes que han pagado */
SELECT c.nombre_cliente, e.nombre, p.total
FROM cliente c INNER JOIN empleado e 
ON c.codigo_empleado_rep_ventas=e.codigo_empleado
INNER JOIN pago p
ON c.codigo_cliente=p.codigo_cliente;