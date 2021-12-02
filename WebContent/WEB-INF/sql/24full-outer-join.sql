USE test;
-- join query는 회사마다 문법이 달라 안그래도 어려운데 더 어렵다.

SELECT * FROM mytable27Customer; -- 3, 4, 5, 6
SELECT * FROM mytable28Tel; -- 1, 3, 4

-- SELECT * FROM mytable27Customer c FULL JOIN mytable28Tel t ON c.id = t.customerId; -- mysql에서는 없음. 
-- FULL OUTER JOIN의 효과를 낼 수 있는 키워드가 하나 있다.
