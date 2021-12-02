USE test;
-- JOIN : 여러 테이블 조합

INSERT INTO mytable27Customer (firstName, lastName) VALUES ('cha', 'bum');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('park', 'js');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('son', 'hm');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('lee', 'gi');

SELECT * FROM mytable27Customer;

INSERT INTO mytable28Tel (customerId, tel) VALUES (3, '0101111');
INSERT INTO mytable28Tel (customerId, tel) VALUES (4, '0102222');
INSERT INTO mytable28Tel (customerId, tel) VALUES (4, '0103333');

SELECT * FROM mytable28Tel;

-- join하려는 테이블을 ,(콤마)로 나열
SELECT * FROM mytable27Customer, mytable28Tel; -- cartesian product(카테시안 곱)으로 나왔다고 표현한다. join의 조건이 없을 때
SELECT * FROM mytable28Tel, mytable27Customer; 
-- 총 16개의 결과를 가져오게되는 join 왜 그럴까?
-- customer table에서 4개, table table에서 4개 = 총 16개. 

SELECT * FROM mytable27Customer JOIN mytable28Tel ON mytable27Customer.id = mytable28Tel.customerId;
-- 카테시안 곱으로 나온 결과를 On이라는 키워드로 구분을 주어서 특정 컬럼의 값이 같은 것만 필터링하여 얻어낼 수 있었다.

-- alias(별칭)
SELECT * FROM mytable27Customer AS t27 JOIN mytable28Tel AS t28 ON t27.id = t28.customerId;
SELECT * FROM mytable27Customer t27 JOIN mytable28Tel t28 ON t27.id = t28.customerId; -- AS는 생략 가능

SELECT t27.id AS 고객번호, t27.firstName AS 이름, t28.id AS 전화ID, t28.tel AS 전화번호
FROM mytable27Customer t27 JOIN mytable28Table t28
ON t27.id = t28.customerId;

SELECT t27.id 고객번호, t27.firstName 이름, t28.id 전화ID, t28.tel 전화번호 -- AS는 생략 가능
FROM mytable27Customer t27 JOIN mytable28Tel t28
ON t27.id = t28.customerId;

-- 예제: 고객이 주문한 날짜 조회
-- 사용 테이블: Orders, Customers

SELECT * FROM Orders; -- 주문한 날짜 
SELECT * FROM Customers; -- 고객 이름

SELECT c.CustomerName name, o.OrderDate date FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID;

-- 예제: 어떤 직원이 어느 날짜에 주문 받았는지 조회
SELECT c.ContactName, o.OrderDate FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID;

SELECT e.LastName, e.FirstName, o.OrderDate 
FROM Employees e 
JOIN Orders o 
ON e.EmployeeID = o.EmployeeID 
ORDER BY o.OrderDate;
