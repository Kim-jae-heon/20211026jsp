-- A 테이블의 내용을 읽을 때
-- SELECT와 FROM 조합으로 작성
-- SELECT: 조회할 열(column)을 명시
-- FROM: Table 명 작성

SELECT * FROM Customers; -- Customers 테이블 조회

-- Employees 테이블 조회
SELECT * FROM Employees;

-- 조회할 열 선택
SELECT LastName, FirstName From Employees;

-- Customers 테이블의 CustomerName, Country 컬럼만 조회
SELECT CustomerName, Country FROM Customers;

-- 모든 컬럼 조회: *
SELECT * FROM Customers;

-- 테이블 컬럼 조회(and 제약사항) 조회 (DESC, DESCRIBE)
DESCRIBE Customers;
DESC Customers;

DESC Employees;

-- Categories 테이블의 컬럼을 조회
DESC Categories;

