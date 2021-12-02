USE test;

-- not null
CREATE TABLE mytable12 (
	col1 VARCHAR(255),
    col2 VARCHAR(255) NOT NULL
);

SELECT * FROM mytable12; -- mySql에서 null은 값이 없음을 의미하므로 직관적으로 다가온다. oracle은 null이 값이 없음을 나타내는 값이다.

INSERT INTO mytable12 (col1, col2) VALUES ('abc', 'def');
INSERT INTO mytable12 (col2) VALUES ('ghi');
INSERT INTO mytable12 (col1) VALUES ('jkl');
INSERT INTO mytable12 (col1, col2) VALUES ('mno', 'pqr');

CREATE TABLE mytable13 (
	col1 VARCHAR(5),
    col2 VARCHAR(5) UNIQUE
);

SELECT * FROM mytable13;

INSERT INTO mytable13(col1, col2) VALUES ('abc', 'abc');
INSERT INTO mytable13(col1, col2) VALUES ('abc', 'abc');
INSERT INTO mytable13(col1, col2) VALUES ('abc', 'de');
INSERT INTO mytable13(col1) VALUES ('abc');
INSERT INTO mytable13(col1) VALUES ('abc'); -- null은 값이 아니다. 그냥 없으므로 비교할 대상이 col2에서 없는 것. 
-- 테이블을 만들면 새로운 레코드를 추가하기 편하게 하기위한 UI가 있는데 이는 값이 아니다. 

-- NOT NULL, UNIQUE
CREATE TABLE mytable14 (
	col1 VARCHAR(5),
    col2 VARCHAR(5) NOT NULL UNIQUE
);

SELECT * FROM mytable14;

INSERT INTO mytable14(col1, col2) VALUES ('안녕하세요', '김재헌');
INSERT INTO mytable14(col1, col2) VALUES ('안녕하세요');
INSERT INTO mytable14(col1, col2) VALUES ('안녕하세요', '고객님');
INSERT INTO mytable14(col1, col2) VALUES ('안녕히가세요', '고객님');

-- CHECK
CREATE TABLE mytable15 (
	col1 INT,
    col2 INT CHECK (col2 >= 100 AND col2 <= 200)
);

INSERT INTO mytable15 (col1, col2) VALUES (-199, 140);
INSERT INTO mytable15 (col1, col2) VALUES (-1000, 2000);

-- DEFAULT
CREATE TABLE mytable16 (
	col1 INT DEFAULT 0,
    col2 VARCHAR(5) DEFAULT 'a',
    col3 DATE DEFAULT NOW(),
    col4 DATETIME DEFAULT NOW()
);

INSERT INTO mytable16 (col1) VALUES (10);

SELECT * FROM mytable16;
