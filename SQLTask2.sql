USE Northwind;

-- 2.1 Write a query that lists all Customers in either Paris or London. Include Customer ID, Company Name and all address fields.
-- SELECT CustomerID, CompanyName, Address FROM Customers WHERE City IN ('Paris') 

-- 2.2 List all products stored in bottles
-- SELECT * FROM Products WHERE QuantityPerUnit LIKE '%bottles%'

-- 2.3 Repeat question above, but add in the Supplier Name and Country.
/* SELECT Products.*, Suppliers.CompanyName, Suppliers.Country -- CompanyName, Country 
FROM Products
JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
WHERE QuantityPerUnit 
LIKE '%bottles%' */

-- 2.4 Write an SQL Statement that shows how many products there are in each category. Include Category Name in result set and list the highest number first.
/* SELECT CategoryName, COUNT(Products.CategoryID) AS ProductCount
FROM Categories
JOIN Products ON Categories.CategoryID = Products.CategoryID
GROUP BY Categories.CategoryName
ORDER BY ProductCount DESC */

-- 2.5 List all UK employees using concatenation to join their title of courtesy, first name and last name together. Also include their city of residence.
/* SELECT Employees.City, CONCAT(Employees.TitleOfCourtesy, ' ', FirstName, ' ' ,Employees.LastName) AS FullName
FROM Employees */

-- 2.6 Count how many Orders have a Freight amount greater than 100.00 and either USA or UK as Ship Country.
/* SELECT COUNT(OrderID) AS OrderTotal 
FROM Orders
WHERE Freight > 100 AND ShipCountry LIKE '%USA%' */

-- 2.7 Write a SQL statement to find the order line with the highest discount applied.
-- Display the order number of the order that contains this order line, as well as the discount applied. The information can be obtained from the [OrderDetails] table

