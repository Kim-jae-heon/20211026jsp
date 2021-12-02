USE test;

SELECT * FROM Customers ORDER BY CustomerID DESC;

DELETE FROM Customers WHERE CustomerID=94;
DELETE FROM Customers WHERE Address = 'gangnam'; -- 여러 데이터를 업데이트하거나 지우는 건 MySQL이 막아놓고있다.

DELETE FROM Customers; -- xxxx

SET SQL_SAFE_UPDATES = 0; -- safe option 끄는 코드
SET SQL_SAFE_UPDATES = 1; -- safe option 키는 코드
-- 안전장치가 되어있다고 막 쓰면 안된다. 주의해서 작업해야 한다.
