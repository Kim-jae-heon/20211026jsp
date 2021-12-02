USE test;

CREATE TABLE mytable23Employee (
	id INT PRIMARY KEY AUTO_INCREMENT,
    employee VARCHAR(255),
    location VARCHAR(255)
);

CREATE TABLE mytable24Skill (
	id INT PRIMARY KEY AUTO_INCREMENT,
    employeeID INT NOT NULL,
    skill VARCHAR(255)
);