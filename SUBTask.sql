Use Northwind;

-- Task 2

/*
SELECT OrderID, sq1.ProductID, UnitPrice, Quantity, Discount 
FROM [Order Details] od 
INNER JOIN (SELECT ProductID FROM Products WHERE Discontinued = '1')
sq1 ON sq1.ProductID = od.ProductID
*/


