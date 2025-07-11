Use Northwind;

-- Task  Return all order and customer information for orders to brazil

/*
SELECT * FROM Orders 
JOIN Customers 
ON Orders.CustomerID = Customers.CustomerID 
WHERE Orders.ShipCountry ='Brazil'; 
*/

-- Task 1

/*
SELECT Orders.OrderID, Orders.OrderDate, Orders.Freight, 
Customers.CompanyName,
Employees.FirstName + ' ' +  Employees.LastName AS 'EmployeeName' 
FROM Orders
INNER JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
*/

-- Task 2

