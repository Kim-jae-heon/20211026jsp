USE test;

SELECT * FROM mytable27Customer; -- 3, 4, 5, 6
SELECT * FROM mytable28Tel; -- 1, 3, 4

SELECT * FROM mytable27Customer c INNER JOIN mytable28Tel t ON c.id = t.customerId;
-- INNER JOIN은 그냥 JOIN으로 써도 아무런 지장 없다.

SELECT * FROM mytable27Customer c LEFT JOIN mytable28Tel t ON c.id = t.customerId; -- OUTER 생략 가능

-- 전화번호 없는 고객
SELECT * FROM mytable27Customer c LEFT JOIN mytable28Tel t ON c.id = t.customerId
WHERE t.id IS NULL;

-- 연습: 주문한 적 없는 고객명 조회
-- 사용테이블: Customers, Orders
SELECT * FROM Customers;
SELECT * FROM Orders;

SELECT CustomerName FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID WHERE o.CustomerID IS NULL;

-- 연습: 주문 받은 적 없는 직원명 오름차순 조회
-- 사용테이블: Employee, Orders
SELECT * FROM Employees;
SELECT * FROM Orders;

SELECT * FROM Employees e LEFT JOIN Orders o ON e.EmployeeID = o.EmployeeID WHERE o.EmployeeID IS NULL;