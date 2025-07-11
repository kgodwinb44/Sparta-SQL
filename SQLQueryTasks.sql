USE Northwind;

-- 1) Write a SELECT using the Employees table and concatenate First Name and Last Name together. Use a column alias to rename the column to Employee Name.
-- Concatenate means combining strings together using (CONCAT)
-- AS is columns alias which renames the column
-- SELECT CONCAT(FirstName, ' ', LastName) AS 'Employee Name' FROM Employees;

-- 2) Write a SELECT statement to list the six countries that have Region Codes in the Customers Table.
-- Distinct to find the only 6 countries not repeats. IS NOT NULL
-- SELECT DISTINCT Country FROM Customers WHERE Region IS NOT NULL;

-- Arithemtic Opertaions

-- 1) Write a SELECT statement that returns the UnitPrice, Quantity, Discount and the gross total (Price * Discount) from [Order Details]
-- Total = Price * Quantity
--SELECT UnitPrice, Quantity, Discount, UnitPrice * Quantity AS 'gross total' FROM [Order Details]
-- 2) Add to the statement above to also include net total
-- SELECT UnitPrice, Quantity, Discount, UnitPrice * Quantity * (1 - Discount) AS 'net total' FROM [Order Details]
-- 3) Add to the statement above to order the results in descending order
-- ORDER BY [nettotal] DESC
--SELECT UnitPrice, Quantity, Discount, UnitPrice * Quantity - Discount AS [net total] FROM [Order Details] ORDER BY [net total] DESC;

-- Research String Functions

-- 1) Use CHARINDEX to list only Product Names that contain a single quotation mark
-- CHARINDEX searches for a substring in a string and returns the position
-- CHARINDEX ('a', 'text') searches for a in column text
-- ' starts the string.
--'' (two single quotes) is how you escape a single quote.
-- ' ends the string.
-- SELECT ProductName FROM Products WHERE CHARINDEX('''', ProductName) > 0;

-- Research Date functions

-- 1. Output a list of Employees from the Employees table including their Name (concatenated) and their Age (calculated from BirthDate)
-- DATEDIFF() Return the difference between two date values	
-- SELECT DATEDIFF(m mm or d dd or yy yyyy, startdate, enddate)
-- SELECT CONCAT(FirstName, ' ', LastName) AS [Name], DATEDIFF(YEAR, BirthDate, GETDATE()) AS [Age] FROM Employees

-- Research Case statements

-- 1. Use a CASE statement to label orders as "On Time" or "Overdue"
-- CASE statement is like an IF-THEN-ELSE login
--SELECT CASE WHEN DATEDIFF(DAY, ShippedDate, RequiredDate) > 0 THEN 'On Time' ELSE 'Overdue' END AS "DeliveryStatus" FROM Orders

-- Research Aggregate Functions

-- 1. Use GROUP BY to calculate the Average Reorder Level for all Products by CategoryID
-- Remember the SELECT clause must match the GROUP BY clause apart from any aggregates
-- What is the highest Average Reorder Level? Use ORDER BY with DESC to confirm
-- Note: You CAN use Column Alias in the ORDER BY clause (due to processing sequence)
-- Research HAVING

/*
SELECT
  CONCAT(' ', FirstName, LastName) AS Name,
  FLOOR(DATEDIFF(D, BirthDate, GETDATE()) /365.25) AS Age,  
  CASE 
  WHEN FLOOR(DATEDIFF(D, BirthDate, GETDATE()) /365.25) > 65 THEN 'Retired'
  WHEN FLOOR(DATEDIFF(D, BirthDate, GETDATE()) /365.25) > 60 THEN 'Almost there'
  ELSE '5 Years to Go'
  END AS 'Retirement Status'
FROM
  Employees;

SELECT SupplierID,
    SUM(UnitsOnOrder) AS "Total On Order",
       AVG(UnitsOnOrder) AS "Avg On Order",
       MAX(UnitsOnOrder) AS "Max On Order"
FROM Products
GROUP BY SupplierID

SELECT SupplierID,
    SUM(UnitsOnOrder) AS "Total On Order",
        AVG(UnitsOnOrder) AS "Avg On Order"
FROM Products
GROUP BY SupplierID
HAVING AVG(UnitsOnOrder)>5 */