USE test;

DROP table mytable20;
CREATE TABLE mytable20(
	col1 INT,
    col2 INT
);

DESC mytable20;
ALTER TABLE mytable20 MODIFY COLUMN col1 INT NOT NULL;
ALTER TABLE mytable20 MODIFY COLUMN col1 INT NULL;

INSERT INTO mytable20 (col2) VALUES (3);

SELECT
	*
FROM
	mytable20;
    
-- DEFAULT 추가
ALTER TABLE mytable20 MODIFY COLUMN col1 INT DEFAULT 0;

-- DEFAULT 삭제
ALTER TABLE mytable20 ALTER col1 DROP DEFAULT;

-- CHECK 제약사항 추가 (DESC에서는 볼 수 없음)
ALTER TABLE mytable20 ADD CHECK (col1 > 10);

-- 제약사항 확인
SHOW CREATE TABLE mytable20;

-- CHECK 제약사항 삭제
-- ALTER TABLE mytable20 DROP CONSTRAINT CONSTAINT_1;

DESC mytable20;

-- unique 제약사항 추가 (unique는 index를 추가하게해주는 코드 중 하나이다.)
ALTER TABLE mytable20 MODIFY COLUMN col1 INT UNIQUE;

-- unique 제약사항 삭제
ALTER TABLE mytable20 DROP INDEX col1;

-- 색인(INDEX)이 없다면 WHERE절을 사용할 때 
SELECT * FROM mytable20 WHERE col1 = 10; -- 모든 레코드를 탐색하므로 시간이 오래 걸린다.

-- INDEX가 있는 경우
SELECT * FROM mytable20 WHERE col1 = 10; -- col1 인덱스로 먼저 탐색(효율적 탐색)

TRUNCATE mytable20; -- 데이터를 모두 지우는 명령어
-- primary key 추가 (index가 생기는 코드)
ALTER TABLE mytable20 MODIFY COLUMN col1 INT PRIMARY KEY;

-- primary key 삭제
ALTER TABLE mytable20 DROP PRIMARY KEY;

