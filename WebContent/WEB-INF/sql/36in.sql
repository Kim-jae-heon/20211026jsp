USE test;

SELECT * FROM Customers
WHERE Country = 'Germany'
	OR Country = 'Mexico'
    OR Country = 'USA'
;

SELECT * FROM Customers
WHERE Country IN('Germany', 'Mexico', 'USA');

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'Mexico', 'USA');

SELECT Country FROM Suppliers;
-- 연습1: 국가가 'USA', 'UK'인 Supplier들 조회(IN 키워드 사용)
SELECT * FROM Suppliers WHERE Country IN ('USA', 'UK');

-- 연습2: 국가가 'USA', 'UK'가 아닌 Supplier들 조회(NOT IN 키워드 사용)
SELECT * FROM Suppliers WHERE Country NOT IN ('USA', 'UK');

-- 연습3: Meat 또는 Seafood 카테고리에 속한 상품명 조회
SELECT * FROM Products;
SELECT * FROM Categories;

SELECT * FROM Products p JOIN Categories c 
ON p.CategoryID = c.CategoryID 
WHERE CategoryName 
IN ('Seafood', 'Meat/Poultry') -- IN대신 Like를 써도 됌
ORDER BY CategoryName, ProductName
;

-- SUBQUERY 활용: JOIN으로 해결한 것은 SUBQUERY로, SUBQUERY로 해결한 것은 JOIN으로 해결할 수 있다.
SELECT * FROM Categories WHERE CategoryName IN ('Meat/Poultry', 'Seafood');

SELECT * FROM Products WHERE CategoryID IN (6, 8);

SELECT * FROM Products 
WHERE CategoryID 
IN (SELECT CategoryID FROM Categories WHERE CategoryName IN ('Meat/Poultry', 'Seafood'));

-- 연습4: Supplier가 있는 나라에 살고 있는 고객 목록 조회
-- SELECT 
-- 	* 
-- FROM 
-- 	Suppliers
-- WHERE
-- 	Country
-- IN(SELECT Country FROM Customers WHERE Country IN ('usa'))
--     ;
-- 코드오류... 으앙..ㅠ // 목표를 항상 우선시 할 것. 

SELECT
	*
FROM
	Customers
WHERE
	Country
IN
	(SELECT Country 
    FROM Suppliers)
    ;
    
    