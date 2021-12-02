-- ORDER BY : 정렬

SELECT * FROM Customers WHERE Country = 'Germany';

SELECT * FROM Customers WHERE Country = 'Germany' ORDER BY City;
-- City 컬럼 기준으로 A,Z까지 정렬

SELECT * FROM Customers WHERE Country = 'USA' ORDER BY CustomerName;

-- 기본은 오름차순 정렬. 내림차순 정렬은 DESC키워드를 사용하면 된다.

SELECT * FROM Customers WHERE Country = 'USA' ORDER BY CustomerName DESC;

-- 독일인 고객을 도시명 기준 역순으로 정렬 조회
SELECT * FROM Customers WHERE Country = 'Germany' ORDER BY City DESC;

-- 여러 컬럼 기준 정렬 : ORDER BY 다음 컬럼명 나열.
SELECT * FROM Customers ORDER BY Country, City;

-- 고객을 나라, 고객명 정렬 조회
SELECT * FROM Customers ORDER BY Country, CustomerName;

-- 고객을 나라 역순, 고객명 오름차순 정렬
SELECT * FROM Customers ORDER BY Country DESC, CustomerName;

-- 고객을 나라 ASC, City도 ASC, 고객명은 DESC 정렬 조회
SELECT * FROM Customers ORDER BY Country, City, CustomerName DESC;