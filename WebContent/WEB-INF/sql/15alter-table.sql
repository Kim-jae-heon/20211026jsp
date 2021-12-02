USE test;

DESC mytable19Student;

-- add column
ALTER TABLE mytable19Student ADD COLUMN (
	height DOUBLE
);

ALTER TABLE mytable19Student ADD COLUMN (
	weight DOUBLE,
    foot DOUBLE
);

SELECT * FROM mytable19Student;

-- AFTER, BEFORE
ALTER TABLE mytable19Student DROP foot;
ALTER TABLE mytable19Student ADD foot Double AFTER name;
DESC mytable19Student;