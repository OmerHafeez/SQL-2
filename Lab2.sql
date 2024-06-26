USE northwind;
SELECT Productname FROM products WHERE ProductName LIKE '%eat';
SELECT Productname FROM products WHERE ProductName LIKE '%read%';
SELECT Productname FROM products WHERE ProductName LIKE 'sea%';
SELECT Productname FROM products WHERE ProductName LIKE 'can%real';
SELECT orderid, COUNT(OrderID)  FROM `order details` GROUP BY orderid;
SELECT City,FirstName FROM employees WHERE EmployeeID IN (SELECT EmployeeID FROM Employees WHERE TitleOfCourtesy='MRS.' AND salary<20000);
SELECT ShipName,ShippedDate,ShipCountry,Freight FROM orders WHERE Freight > (SELECT AVG(Freight) FROM orders) ;
SELECT ProductID,ProductName,UnitPrice*UnitsOnOrder AS TotalCost FROM products;