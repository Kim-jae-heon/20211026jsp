USE test;

SELECT * FROM mytable27Customer; -- 3, 4, 5, 6
SELECT * FROM mytable28Tel; -- 1, 3, 4

SELECT * FROM mytable27Customer c RIGHT JOIN mytable28Tel t ON c.id = t.customerId;

-- 주인 없는 전화번호
SELECT * FROM mytable27Customer c RIGHT JOIN mytable28Tel t ON c.id = t.customerId
WHERE c.id Is NULL;

-- 연습1: 주문한 적 없는 고객명 오름차순 조회
-- 사용테이블: Customers, Orders
SELECT c.CustomerName FROM Orders o RIGHT JOIN Customers c ON c.CustomerID = o.CustomerID WHERE o.OrderID IS NULL;

-- 연습2: 주문 받은 적 없는 직원명 오름차순 조회
-- 사용테이블: Employees, Orders
SELECT e.FirstName, e.LastName FROM Orders o RIGHT JOIN Employees e ON e.EmployeeID = o.EmployeeID WHERE o.OrderID IS NULL;

