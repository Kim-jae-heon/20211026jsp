SELECT Country, count(CustomerID) FROM Customers
-- WHERE people > 10 얘는 안됨. Where절에 조건을 줄 수 없게 되어있다. 
Group BY Country 
HAVING count(CustomerID) >= 10 -- people 가능
;

-- 연습1: 주문을 한 번만 한 사람들 조회
-- table: Orders, Customers
SELECT 
    c.CustomerID, c.CustomerName, COUNT(c.CustomerName)
FROM
    Orders o
        JOIN
    Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerName
HAVING COUNT(c.CustomerName) = 1
ORDER BY 1;

-- 연습2: 주문을 한 번 또는 한 번도 안한 사람들 조회. (CustomerID, CustomerName, 주문수)
SELECT
	c.CustomerID, c.CustomerName, count(o.CustomerID) OrderCount
FROM
	Customers c
    LEFT JOIN
    Orders o
	ON
    c.CustomerID = o.CustomerID
    GROUP BY
    c.CustomerID
    HAVING
    count(o.CustomerID) = 1 OR count(o.CustomerID) = 0
	ORDER BY 3;

-- 연습3: 주문을 한 번 또는 0번 받은 직원들 조회
SELECT
	e.FirstName, e.LastName, count(o.EmployeeID) ContractCount
FROM
	Employees e
    LEFT JOIN
    Orders o
    ON
    e.EmployeeID = o.EmployeeID
    GROUP BY 
    e.EmployeeID
    HAVING
    count(o.EmployeeID) <= 1
    ;
