/*1)Traer los employeeNumber, firstName,  lastName y officeCode de los empleados cuyo officeCode es mayor que 2.
*/
SELECT employeeNumber, firstName,  lastName, officeCode
FROM employees e 
WHERE officeCode > 2
LIMIT 10;

/*2)Traer el id,nombre y apellido del presidente
*/
SELECT employeeNumber, lastName , firstName 
FROM employees
WHERE jobTitle = "President";

/*3)Traer id, nombre y apellido de los que se reportan a 1143
*/
SELECT e.employeeNumber, e.firstName, e.lastName, e.reportsTo 
FROM employees e 
WHERE e.reportsTo = 1143;

/*4)Mostrar cuántos empleados se reportan al 1143, en una columna llamada ‘Empleados al 1143’
*/
SELECT COUNT(*) AS "Empleados al 1143"
FROM employees e 
WHERE e.reportsTo = 1143;

/*5)Mostrar cuántos empleados con el título ‘Sales Rep’ tiene la compañía, en una columna con un nombre descriptivo.
*/
SELECT COUNT(*) AS "Qty Employees as Sales Representives"
FROM employees e 
WHERE e.jobTitle = "Sales Rep";

/*6)Mostrar los datos de los empleados cuyo nombre contiene la letra ‘a’ y al mismo tiempo su apellido comienza con ‘H’
*/
SELECT *
FROM employees e
WHERE e.firstName LIKE "%a%" AND e.lastName LIKE "H%";


