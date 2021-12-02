-- 상품별 판매수량(OrderDetails의 ProductID와 Quantity정보 이용, Product table이용)
SELECT
	od.ProductID, p.ProductName, sum(od.Quantity) SalesQuantity
FROM
	OrderDetails od
    JOIN
    Products p
    ON
    od.ProductID = p.ProductID
    GROUP BY
    od.ProductID
    ORDER BY 3
    ;

-- 상품별 매출액(판매수량을 구했으니, 수량에 가격을 곱해줄 것. SELECT할 때 식을 쓸 수 있다는 점. Column끼리 곱하기를 할 수 있다.)
SELECT
	a.ProductID, a.ProductName, a.Price * a.SalesQuantity
FROM
	(SELECT
		od.ProductID, p.ProductName, sum(od.Quantity) SalesQuantity, p.Price
	FROM
		OrderDetails od
		JOIN
		Products p
		ON
		od.ProductID = p.ProductID
		GROUP BY
		od.ProductID
		ORDER BY 3
		) a
	ORDER BY 3;

-- 날짜별 매출액(주문한 날짜는 Order의 OrderDate에, 상품갯수는 OrderDetails에, 상품은 Products에)

SELECT o.OrderDate, od.ProductID,
   p.ProductName, p.Price, od.Quantity,
   sum(p.Price * od.Quantity) '합'
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
		  JOIN Products p ON od.ProductID = p.ProductID
GROUP BY o.OrderDate
ORDER BY o.OrderDate;

-- SELECT
-- 	o.OrderDate, A.ProductID, A.ProductName, sum(A.Sales) TotalSales
-- FROM
-- 	(SELECT
-- 	a.ProductID, a.ProductName, a.Price * a.SalesQuantity Sales, a.OrderID
-- 	FROM
-- 	(SELECT
-- 		od.ProductID, p.ProductName, sum(od.Quantity) SalesQuantity, p.Price, od.OrderID
-- 	FROM
-- 		OrderDetails od
-- 		JOIN
-- 		Products p
-- 		ON
-- 		od.ProductID = p.ProductID
-- 		GROUP BY
-- 		od.ProductID
-- 		) a) A
--     JOIN
--     Orders o
--     ON
--     A.OrderID = o.OrderID
--     GROUP BY
--     o.OrderDate
--     ORDER BY
--     1; -- 이 쿼리는 조건이 중복된 쿼리. 상품별 + 날짜별까지 해버려서 데이터가 겹쳐나오거나 이상하게 나올 수 밖에 없다.
