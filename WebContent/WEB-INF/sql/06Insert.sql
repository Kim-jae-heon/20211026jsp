USE test;

SELECT * FROM Customers ORDER BY CustomerID DESC;

SELECT * FROM Suppliers ORDER BY SupplierID DESC;

SELECT DISTINCT country FROM Customers ORDER BY country;

INSERT INTO Customers VALUES (92, 'Kim', 'Kim', 'GangNam', 'Seoul', '88888', 'Korea');

INSERT INTO Customers (CustomerID, CustomerName) VALUES (93, 'Lee'); 

INSERT INTO Customers (CustomerID, ContactName) VALUES(94, 'Choi');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES (95, 'Park', 'JiSung', 'Yeoksam', 'Seoul', '77777', 'Korea');

-- 96번째, 97번째 records 추가 sql작성, 실행
INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES (96, 'Kim Jae Heon', 'Korea');
INSERT INTO Customers (CustomerName, ContactName, Address) VALUES ('Kim Soo Yeon', 'Kim Jae Kyoung', 'Seoul');
-- CustomerID는 DB에서 자체적으로 설정해주는 판별값이다. 그렇기에(key column이기에) 나머지 열에만 값을 잘 채워주면 된다.

-- 두 개의 row(record = data)를 CustomerID컬럼의 값을 직접 작성하지 않고 추가
INSERT INTO Customers (CustomerName) VALUES ('IU');
INSERT INTO Customers (CustomerName) VALUES ('HYNN');

SELECT * FROM Suppliers ORDER BY SupplierID DESC;

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country) VALUES (?, ?, ?, ?, ?, ?);
INSERT INTO Suppliers (SupplierName, ContactName. Address, City, PostalCode, Country, Phone) VALUES (?, ?, ?, ?, ?, ?, ?);
