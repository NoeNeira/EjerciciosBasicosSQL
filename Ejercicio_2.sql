SELECT *			
FROM employees e 

SELECT *
FROM offices o 

SELECT * 
FROM payments p 

SELECT *
FROM customers c 

SELECT e.employeeNumber, e.firstName, e.lastName, o.officeCode 
FROM employees e INNER JOIN offices o ON (e.officeCode = o.officeCode)
ORDER BY o.officeCode  

/*7)Mostrar  nombre, apellido e emails de los empleados así como también la ciudad y teléfono de la oficina en la que trabajan ordenados por ciudad. Pista: usar inner join y order by
*/
SELECT e.firstName, e.lastName , e.email , o.city, o.phone 
FROM employees e INNER JOIN offices o ON (e.officeCode = o.officeCode)
ORDER BY o.city 

/*8)Idem anterior pero con todas las columnas traducidas al español
*/
SELECT e.firstName AS Nombre, e.lastName AS Apellido , e.email AS Correo_Electrónico, o.city AS Ciudad, o.phone AS Nro_Telefónico 
FROM employees e INNER JOIN offices o ON (e.officeCode = o.officeCode)
ORDER BY o.city 

/*9)Mostrar los datos de los últimos 3 pagos, es decir, los más recientes.(usar order by y limit)
*/
SELECT * 
FROM payments p 
ORDER BY paymentDate DESC 
LIMIT 3;

/*10)Similar al anterior, mostrar las fechas de estos últimos pagos y quiénes fueron los clientes que realizaron esa compra.(usar inner join)
*/
SELECT c.customerNumber, c.customerName, p.checkNumber, p.paymentDate, p.amount  
FROM payments p INNER JOIN customers c ON (p.customerNumber = c.customerNumber ) 
ORDER BY p.paymentDate DESC 
LIMIT 3;



