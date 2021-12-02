USE test;
SELECT LastName FROM Employees;

SELECT CustomerName, ContactName, Address FROM Customers WHERE CustomerID = 1;
SELECT LastName, FirstName FROM Employees WHERE EmployeeID = 1;
SELECT CustomerName, ContactName, Address, City FROM Customers WHERE CustomerID = 1;

SELECT * FROM Suppliers;

SELECT SupplierID, SupplierName, ContactName, Address, City, PostalCode, Country, Phone FROM Suppliers;

