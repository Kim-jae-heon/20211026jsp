USE test;

SELECT * FROM mytable27Customer;
SELECT * FROM mytable28Tel;

SELECT firstName FROM mytable27Customer -- 그러나 열의 갯수가 다르면 union을 할 수 없다.
UNION
SELECT lastName FROM mytable27Customer;

INSERT INTO mytable27Customer (firstName, lastName) VALUES ('ji', 'sj');

-- 중복된 값도 조회
SELECT firstName FROM mytable27Customer
UNION ALL
SELECT lastName FROM mytable27Customer;

SELECT * FROM mytable27Customer; -- 3,4,5,6,7
SELECT * FROM mytable28Tel; -- 1,3,4

SELECT * FROM mytable27Customer c LEFT JOIN mytable28Tel t ON c.id = t.customerId
UNION
SELECT * FROM mytable27Customer c RIGHT JOIN mytable28Tel t ON c.id = t.customerId;

-- 연습 : 고객명과, 직원의 LastName을 하나의 컬럼으로 조회
SELECT c.CustomerName FROM Customers c
UNION
SELECT e.LastName FROM Employees e
ORDER BY 1;



