USE mydb1;

CREATE TABLE MyTable12 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) NOT NULL UNIQUE
);
DESC MyTable12;

-- PRIMARY KEY : NOT NULL, UNIQUE 조합
CREATE TABLE MyTable13 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) PRIMARY KEY
);
DESC MyTable13;

INSERT INTO MyTable13 (col1, col2) VALUES ('a', 'a');
INSERT INTO MyTable13 (col1, col2) VALUES ('a', 'b');
INSERT INTO MyTable13 (col1, col2) VALUES ('a', 'b'); -- UNIQUE 제약사항
INSERT INTO MyTable13 (col1, col2) VALUES ('a', null); -- NOT NULL 제약사항
SELECT * FROM MyTable13;