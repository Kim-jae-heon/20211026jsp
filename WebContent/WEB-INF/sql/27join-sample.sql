SELECT * FROM Categories;
SELECT * FROM Products;
-- 정렬은 ctrl + b
SELECT 
    p.ProductID, p.ProductName, c.CategoryName, p.Unit, p.Price
FROM
    Categories c
        JOIN
    Products p ON p.CategoryID = c.CategoryID
ORDER BY 3 , 2;

-- product의 ID, 상품명, 단위, 가격과 category의 이름을
-- Categories와 Product의 data에서 가져오되,
-- Categories의 CategoryID와 Product의 CategoryID를 묶어서 가져올 것. 