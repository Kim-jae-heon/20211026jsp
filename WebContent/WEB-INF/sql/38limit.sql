SELECT * FROM Products
ORDER BY Price DESC
LIMIT 3; -- 위에서 3개

SELECT * FROM Products
ORDER BY Price ASC
LIMIT 3;

-- 연습1: 가장 늦게 태어난 직원 3명
SELECT * FROM Employees
ORDER BY BirthDate DESC
LIMIT 3; -- 하나의 값만 LIMIT에 오면 위에서부터 3개 

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 0, 5; -- 두 개의 값이 LIMIT에 오면 첫 번째 수는 시작 위치, 두 번째 수는 개수를 나타낸다.

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 5, 5; -- 앞에서 5개를 조회했으므로 5번째 부터 시작하여 5개를 개수한다는 의미

-- Page 처리 활용
-- 한 페이지에 10개의 데이터 조회
-- 1페이지 limit 0,10
-- 2페이지 limit 10,10
-- 3페이지 limit 20,10
-- ...
-- n페이지 limit (n-1)*10,10

-- --------------------------------------------

-- Page 처리 활용
-- 한 페이지에 x개의 데이터 조회
-- 1페이지 limit 0,x
-- 2페이지 limit x,x
-- 3페이지 limit 2x,x
-- ...
-- n페이지 limit (n-1)*x,x

-- > 마지막은 몇 페이지?
-- 필요한 값: 총records 수(SELECT COUNT(*) FROM tableName)
-- 총 records의 수는 99일 때 페이지당 x개의 데이터 출력 시 마지막은 몇 페이지?
-- 답: 99/x 페이지(소수점이 나올 시 올림)
-- = 99/x : (몫+1) 또는 (몫)
--                      나누어 떨어질 때

SELECT COUNT(*) FROM Customers;
SELECT * FROM Customers
ORDER BY CustomerID
LIMIT ?, ?; -- 우리의 쿼리는 이렇게 생겼을 것. ?를 자바에서 계산해서 넣어주어야 한다.


