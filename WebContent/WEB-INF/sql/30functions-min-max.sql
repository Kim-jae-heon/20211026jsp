USE test;

SELECT * FROM Products
ORDER BY Price ASC;

SELECT MIN(Price) AS SmallestPrice FROM Products;
SELECT MAX(Price) AS LargestPrice FROM Products; -- AS는 생략 가능

-- Employees테이블에서 가장 이른 생일과 가장 늦은 생일 조회
SELECT * FROM Employees
ORDER BY BirthDate ASC;

SELECT MIN(BirthDate) EarlyBirth FROM Employees;
SELECT MAX(BirthDate) LateBirth FROM Employees;

-- 쿼리 안에 쿼리 넣기(nested query)
SELECT * FROM Employees
WHERE BirthDate = (SELECT MIN(BirthDate) EarlyBirth FROM Employees); -- 괄호안에 있는 쿼리는 subquery라고 한다.
-- "="를 쓸 때에 주의해야하는 것은 단일한 결과로 나온다는 것.

-- 연습1: 가장 나중에 태어난 사람(들) 조회
SELECT 
    *
FROM
    Employees
WHERE
    BirthDate = (SELECT 
            MAX(BirthDate)
        FROM
            Employees);

-- 연습2: 가장 저렴한 가격의 상품 조회
SELECT ProductID,ProductName, Price FROM Products WHERE Price = (SELECT MIN(Price) FROM Products);

-- 연습3: 가장 비싼 가격의 상품 조회
SELECT ProductID, ProductName, Price FROM Products WHERE Price = (SELECT MAX(Price) FROM Products);

