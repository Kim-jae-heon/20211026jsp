USE test;

-- 3정규화 (third normal form, 3nf)

CREATE TABLE mytable25Winner (
	tournament VARCHAR(255),
    year CHAR(4),
    winner VARCHAR(255)
);

CREATE TABLE mytable26WinneBirth(
	id INT PRIMARY KEY AUTO_INCREMENT,
    winner VARCHAR(255),
    birth DATE
);