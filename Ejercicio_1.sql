/*1)Traer los employeeNumber, firstName,  lastName y officeCode de los empleados cuyo officeCode es mayor que 2.
*/
SELECT employeeNumber, firstName,  lastName, officeCode
FROM employees e 
WHERE officeCode > 2
LIMIT 10;