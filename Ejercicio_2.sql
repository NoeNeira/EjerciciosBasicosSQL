/*SELECT *			
FROM employees e 

SELECT *
FROM offices o 
*/

SELECT e.employeeNumber, e.firstName, e.lastName, o.officeCode 
FROM employees e INNER JOIN offices o ON (e.officeCode = o.officeCode)
ORDER BY o.officeCode  

