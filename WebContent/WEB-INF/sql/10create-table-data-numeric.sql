USE test;

CREATE TABLE mytable5 (
	name VARCHAR(255),
    age INT
);

DESC mytable5;

INSERT INTO mytable5 (name, age) VALUES ('son', 77);

SELECT * FROM mytable5;

CREATE TABLE mytable6 (
	name VARCHAR(255),
    score DOUBLE
);

DESC mytable6;

INSERT INTO mytable6 (name, score) VALUES ('park', 3.14);

SELECT * FROM mytable6;

CREATE TABLE mytable7 (
	col1 DECIMAL(3),
    col2 DECIMAL(5, 2) -- 소수점 아래로 2자리. 자릿수를 명시하고 싶은 때엔 DECIMAL을 활용하자!
);

INSERT INTO mytable7 (col1, col2) VALUES (100, 100.33);

SELECT * FROM mytable7;

INSERT INTO mytable7 (col1) VALUES (1100); -- 들어가긴 들어가는데, 원하는 값이 들어가지는 않았다. 자릿수를 초과했기 때문

INSERT INTO mytable7 (col2) VALUES (100.123); -- 자릿수를 초과하면 원하는 값이 들어가지 않는다. 

-- 연습: mytable8 만들기
CREATE TABLE mytable8 (
	name VARCHAR(255),
    nickName VARCHAR(255)
);

INSERT INTO mytable8 (name, nickName) VALUES ('Jae Heon', 'david');

SELECT * FROM mytable8;