SELECT id_empleado from EMPLEADOS 
GROUP BY primer_nombre;


SELECT COUNT(id_empleado), avg(salario) , MAX(id_gerente) from EMPLEADOS

GROUP BY primer_nombre;

SELECT COUNT(id_gerente), avg(salario) , MAX(id_departamento) from EMPLEADOS

GROUP BY primer_nombre;



SELECT COUNT(id_empleado), avg(salario) , MAX(id_gerente) from EMPLEADOS

WHERE id_trabajo = 1

GROUP BY primer_nombre;

SELECT COUNT(id_gerente), avg(salario) , MAX(id_departamento) from EMPLEADOS

WHERE id_trabajo = 5

GROUP BY primer_nombre;



SELECT COUNT(id_emleado), avg(salario) , MAX(id_gerente) from EMPLEADOS

HAVING id_trabajo = 1

order By  primer_nombre;


SELECT COUNT(id_gerente), avg(salario) , MAX(id_departamento) from EMPLEADOS

HAVING id_trabajo = 1

order By  primer_nombre;


SELECT TOP 5 *
FROM EMPLEADOS

SELECT TOP 3 *
FROM EMPLEADOS

SELECT TOP 6 *
FROM EMPLEADOS