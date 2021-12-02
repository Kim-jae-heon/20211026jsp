USE test;

SELECT * FROM Shippers;
SELECT * FROM Orders;

SELECT 
    *
FROM
    Shippers s
        JOIN
    Orders o ON s.ShipperID = o.ShipperID; -- 중복을 제거해주는 ON이하의 코드들. 
    
DESC Shippers;
DESC Orders;