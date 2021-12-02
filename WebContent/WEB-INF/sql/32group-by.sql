SELECT count(CustomerID) FROM Customers;

SELECT Country, count(CustomerID) FROM Customers
GROUP BY Country
ORDER BY 1
;

-- 연습1: 나라별 Supplier수 조회
SELECT * FROM Suppliers;

SELECT Country, COUNT(SupplierID) FROM Suppliers GROUP BY Country ORDER BY 1;

-- 연습2: 가장 많은 고객이 있는 나라(들) 조회
SELECT * FROM Customers;

SELECT
	*
FROM
	(SELECT
		Country, COUNT(CustomerID) Count
	FROM
		Customers
	GROUP BY Country) B
WHERE
		Count = (SELECT
			MAX(Count)
		FROM
			(SELECT
				Country, COUNT(CustomerID) Count
			FROM
				Customers
			GROUP BY Country) A)
;

-- 연습3: 가장 적은 고객이 있는 나라(들) 조회
SELECT
	*
FROM
	(SELECT
		Country, count(CustomerID) C
	FROM
		Customers
	GROUP BY
		Country) B
WHERE
	C = (SELECT
		MIN(C)
        FROM
			(SELECT
				Country, count(CustomerID) C
			FROM
				Customers
			GROUP BY Country) A);
            
-- 연습4 : 고객별 주문 수 조회
-- table: Customers, Orders
SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT 
    c.CustomerName, COUNT(c.CustomerName) 주문수
FROM
    Customers c
        JOIN
    Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY 2;

-- 연습: 고객별로 총 주문한 수량
SELECT * FROM Orders;
SELECT * FROM OrderDetails;
SELECT 
    CustomerID, SUM(Quantity)
FROM
    Orders o
        JOIN
    OrderDetails od ON o.OrderID = od.OrderID
GROUP BY o.CustomerID
ORDER BY 1;
-- 통계를 많이 내는 회사라면 쿼리의 효율을 높이게끔 튜닝하는 방법도 배워야 한다.