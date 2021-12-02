-- avg
SELECT AVG(Price) FROM Products; -- '28.866364' -> 레코드를 넣은 뒤 '28.496282'로 줄어든 모습

-- sum
SELECT SUM(Price) FROM Products;

SELECT * FROM Products;

INSERT INTO Products (ProductName, SupplierID, CategoryID, Unit, Price)
VALUES ('My Prod', 1, 1, '1KG', 0);

INSERT INTO Products (ProductName, SupplierID, CategoryID, Unit)
VALUES('My Prod', 1, 1, '1KG'); -- null값이라면 아예 평균계산에 들어가지 않는다. 따라서 값이 0 이냐 null이냐는 차이가 있는 것.

-- 연습1: SubQuery사용해서 평균값 이하인 상품 목록
SELECT * FROM Products WHERE Price <= (SELECT AVG(Price) FROM Products) ORDER BY Price;

-- 연습2: SubQuery 사용해서 평균값 이상인 상품 목록
SELECT * FROM Products WHERE Price >= (SELECT AVG(Price) FROM Products) ORDER BY Price;

-- 연습3: 1996-07-08에 주문한 상품의 총 수량(Quantity)
-- 사용테이블: Orders, OrderDetails
SELECT * FROM Orders;
SELECT * FROM OrderDetails;

SELECT SUM(od.Quantity) FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID WHERE OrderDate = '1996-07-08';
