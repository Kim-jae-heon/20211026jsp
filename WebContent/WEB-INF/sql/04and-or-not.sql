SELECT * FROM Customers WHERE CustomerID < 10;

SELECT * FROM Customers WHERE Country = 'Mexico';

-- AND : 두 조건 모두 만족
SELECT * FROM Customers WHERE CustomerID < 10 AND Country = 'Mexico';

-- Customers 테이블에서 Country가 Germany이고 city가 Berlin인 행 조회
SELECT * FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';

-- OR: 두 조건 중 하나만 만족
SELECT * FROM Customers WHERE City = 'Paris' OR Country = 'UK';

-- Customers 테이블에서 Country가 Germany이거나 Country가 Spain인 행 조회
SELECT * From Customers WHERE Country = 'Germany' OR Country = 'Spain';

-- Not: 조건에 해당하지 않는 것
SELECT * FROM Customers WHERE NOT Country = 'UK';

SELECT * FROM Customers WHERE NOT Country = 'Germany';

SELECT * FROM Customers WHERE Country = 'Germany' AND (City='Berlin' OR City='Munchen');

-- 나라는 독일이고 도시는 베를린이나 뮌헨이 아닌 행 조회
SELECT * FROM Customers WHERE Country = 'Germany' AND  NOT (City = 'Berlin' OR City = 'Munchen');

SELECT * FROM Customers WHERE NOT Country='Germany' AND NOT Country='USA';
SELECT * FROM Customers WHERE Country='Germany' OR Country='USA';
