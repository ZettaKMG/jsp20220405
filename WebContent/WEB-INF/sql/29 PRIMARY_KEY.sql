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

-- AUTO_INCREMENT : 자동으로 값 증가
CREATE TABLE MyTable18 (
	col1 INT PRIMARY KEY AUTO_INCREMENT, -- 1부터 자동으로 1씩 증가하는 값 입력해줌
    col2 VARCHAR(10)
);
SELECT * FROM MyTable18;
INSERT INTO MyTable18 (col2) VALUES('abce');

DELETE FROM MyTable18 WHERE col1 = 10;