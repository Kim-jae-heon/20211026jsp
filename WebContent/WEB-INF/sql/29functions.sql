USE test;

-- count: 갯수
-- Customers 테이블의 row 수
SELECT count(*) FROM Customers;
SELECT * FROM Customers;
SELECT count(CustomerID) FROM Customers;
SELECT count(ContactName) From Customers; -- null은 count 안하기에 원본보다 숫자가 적어진다.
SELECT * FROM Customers WHERE ContactName IS NULL; -- 확인결과 4개가 나온다. 

SELECT * FROM Customers ORDER BY Country;
SELECT count(DISTINCT Country) FROM Customers ORDER BY Country;

-- 연습1: Suppliers의 city컬럼의 값이 중복없이 몇 개 있는지?
SELECT * FROM Suppliers;
SELECT count(DISTINCT City) FROM Suppliers;

-- 연습2: Suppliers의 country컬럼의 값이 중복없이 몇 개 있는지?
SELECT count(DISTINCT Country) FROM Suppliers;

-- 연습3: Seafood가 몇 번 주문되었는지 조회
SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM OrderDetails;
SELECT * FROM Categories;
SELECT * FROM OrderDetails od JOIN Orders o ON od.OrderID = o.OrderID
							  JOIN Customers c ON o.CustomerID = c.CustomerID
                              JOIN Products p ON p.ProductID = od.ProductID
                              JOIN Categories ct ON ct.CategoryID = p.CategoryID
                              WHERE ct.CategoryName = 'Seafood';
                              
-- 연습4: Seafood를 한 번이라도 주문한 적이 있는 고객 수 조회
SELECT 
    COUNT(DISTINCT o.CustomerID)
FROM
    OrderDetails od
        JOIN
    Orders o ON od.OrderID = o.OrderID
        JOIN
    Customers c ON o.CustomerID = c.CustomerID
        JOIN
    Products p ON p.ProductID = od.ProductID
        JOIN
    Categories ct ON ct.CategoryID = p.CategoryID
WHERE
    ct.CategoryName = 'Seafood';
-- 쿼리는 물론이고 TABLE 사이의 관계를 파악해나가야 하며 이 또한 쉽지 않다. 

