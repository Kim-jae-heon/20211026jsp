use test;

-- transaction: 하나의 업무 단위

CREATE TABLE mytable29Bank (
	id INT PRIMARY KEY AUTO_INCREMENT,
    money INT NOT NULL
);

INSERT INTO mytable29Bank (money) VALUES (10000), (20000);

SELECT * FROM mytable29Bank;

-- 1번 계좌에서 2번 계좌로 5000원 송금업무

-- 1) 1번 계좌에서 출금
UPDATE mytable29Bank SET money = 5000 WHERE id = 1;
-- 2) 2번 계좌에 입금
UPDATE mytable29Bank SET money = 25000 WHERE id = 2;

-- 초기값 세팅
UPDATE mytable29Bank SET money = 10000 WHERE id = 1;
UPDATE mytable29Bank SET money = 20000 WHERE id = 2;

-- auto COMMIT disable
SET autocommit = 0;

-- 1) 1번 계좌에서 출금
UPDATE mytable29Bank SET money = 5000 WHERE id = 1;
SELECT * FROM mytable29Bank;

-- 3) 번개맞음
ROLLBACK;
SELECT * FROM mytable29Bank;

-- 2) 2번 계좌에 입금 -- 싫행 안됨
-- UPDATE mytable29Bank SET money = 25000 WHERE id = 2;

-- 재송금
-- 1) 번 계좌에서 출금










