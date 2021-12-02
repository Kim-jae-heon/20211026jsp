USE test;

-- CONCAT : 스트링 연결 함수
SELECT concat('abc', 'def') AS newStr;

SELECT EmployeeID, concat(LastName, ' ', FirstName) Name, BirthDate, Notes FROM Employees;

-- SUBSTR : 부분문자열 - sql에서는 index가 1번부터 시작한다는 점을 유의하자.
SELECT substr('hello wolrd', 1,4); -- 원본 문자열, 시작 위치, 길이

-- world만 조회 되도록
SELECT substr('hello wolrd', 7, 5); -- 스페이스도 인덱스에 포함한다는 점 주의.

-- IF NULL : null을 다른 값으로
SELECT CustomerName, IFNULL(ContactName, 'none') ContactName FROM Customers
ORDER BY CustomerID DESC
; -- 실제 데이타값이 변경된 것이 아닌 resultSet만 변경된 것.

SELECT * FROM Customers ORDER BY CustomerID DESC;

-- coalesce : 첫번재로 null아닌 값
SELECT coalesce(null, null, 'hello', null, 'world');

SELECT CustomerName, coalesce(ContactName, 'none' )FROM Customers ORDER BY CustomerID DESC;

-- now
SELECT now();

SELECT CustomerID, CustomerName, ifnull(ContactName, 'none'), 
ifnull(concat(Address, ' ', City, ' ', PostalCode, ' ', Country), 'none') FullAddress 
FROM Customers;