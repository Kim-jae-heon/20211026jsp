use test;

SELECT * FROM Products;

SELECT * FROM Products
WHERE Price >= 10;

SELECT * FROM Products
WHERE Price <= 20;

SELECT * FROM Products
WHERE Price >= 10 AND Price <= 20;

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE ProductName BETWEEN 'C' AND 'F'; -- C로 시작하는 이름과 F로 시작하는 이름까지 포함하여 조회

SELECT * FROM Employees ORDER BY BirthDate;
SELECT * FROM Employees WHERE BirthDate BETWEEN '1958-01-01' AND '1958-12-31';

