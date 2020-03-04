/* UPDATE
 * SET
 * WHERE
 */

SELECT *
FROM employees e 

/*Insertar nueva columna a una tabla existente
*/
ALTER TABLE employees 
ADD COLUMN Salary INTEGER NULL;

 
/*Actualizar registros de una tabla
*/

UPDATE employees
SET lastName='Murphy', firstName='Diane', extension='x5800', email='dmurphy@classicmodelcars.com', officeCode='1', reportsTo=NULL, jobTitle='President', Salary=2000000
WHERE employeeNumber=1002;


UPDATE employees 	
SET Salary=1600000
WHERE employeeNumber=1056;

UPDATE employees 	
SET Salary=1530000
WHERE employeeNumber=1076;

UPDATE employees 	
SET Salary=1260000
WHERE employeeNumber=1088;

UPDATE employees 
SET Salary=1259000
WHERE employeeNumber=1102;

UPDATE employees 
SET Salary=1310000
WHERE jobTitle = "Sales Manager (NA)";

UPDATE employees 
SET Salary=98000
WHERE jobTitle = "Sales Rep"
AND reportsTo =1143; 

UPDATE employees 
SET Salary=96000
WHERE jobTitle = "Sales Rep"
AND reportsTo =1088; 

UPDATE employees 
SET Salary=99000
WHERE jobTitle = "Sales Rep"
AND reportsTo =1102; 

UPDATE employees 
SET Salary=90000
WHERE employeeNumber=1625;

UPDATE employees 
SET Salary=92000
WHERE employeeNumber=1621;

