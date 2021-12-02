SELECT * FROM Customers;

-- WHERE : 조건에 해당하는 행(row, record)만 필터

SELECT * FROM Customers WHERE Country = 'Brazil'; -- sql에서 문자열은 작은 따옴표를 사용

-- Customers 테이블에서 Country가 France인 행만 조회하는 코드를 완성하기
SELECT * FROM Customers WHERE Country = 'France';

-- WHERE에서 사용할 수 있는 연산자들
SELECT * FROM Customers WHERE CustomerID > 50;
SELECT * FROM Customers WHERE CustomerID < 5;

SELECT * FROM Customers WHERE CustomerID >= 89;
SELECT * FROM Customers WHERE CustomerID <= 5;

SELECT * FROM Customers WHERE CustomerID <> 1;
SELECT * FROM Customers WHERE CustomerID != 1;

-- 연산자연습: Emplyees테이블의 EmplyeeID를 사용해서 위 연산자 연습
SELECT * FROM Employees WHERE EmployeeID < 4;
SELECT * FROM Employees WHERE EmployeeID <> 6;