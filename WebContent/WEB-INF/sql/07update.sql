SELECT * FROM Customers ORDER BY CustomerID DESC;

UPDATE Customers -- key column은 변경하면 안된다.
SET Address = 'NakSungDae'
WHERE CustomerID = 93;

UPDATE Customers
SET Address = 'mancity', City = 'Suwon', PostalCode = '33333'
WHERE CustomerID = 96;

SELECT * FROM Suppliers ORDER BY SupplierID DESC;

-- JDBC 용
UPDATE Customers
SET
	CustomerName = ?,
    ContactName = ?,
    Address = ?,
    City = ?,
    PostalCode = ?,
    Country = ?
WHERE
	CustomerID = ?;
    
UPDATE Suppliers
SET
	SupplierName = ?,
    ContactName = ?,
    Address = ?,
    City = ?,
    PostalCode = ?,
    Country = ?,
    Phone = ?
WHERE
	SupplierID = ?;

