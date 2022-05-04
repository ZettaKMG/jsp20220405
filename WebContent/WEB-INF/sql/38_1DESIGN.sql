-- 제2정규형(Second Normal Form, 2NF) (책 p369)
-- 규칙1: 제1정규형이어야한다.
-- 규칙2: 부분적 함수 의존이 없다.
   -- 키가 아닌 열이 합성키의 일부에 종속되는 경우 (책 p363)

-- 제3정규형(Third Normal Form, 3NF) (책 p374)
-- 규칙1: 제2정규형이어야한다.
-- 규칙2: 이행적 종속이 없다. 
   -- 키가 아닌 열이 키가 아닌 다른 열에 종속되는 경우 (책 p364)
   
-- 제3정규형 만족하지 않는 테이블(규칙2 위반)
CREATE TABLE courses (
	course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    instructor VARCHAR(255),
    instructor_phone VARCHAR(255)
);

DROP TABLE courses;

DROP TABLE course;
-- 제3정규형 만족하는 테이블
CREATE TABLE course (
	course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(255),
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES instructor(instructor_id)
);

CREATE TABLE instructor (
	instructor_id INT PRIMARY KEY AUTO_INCREMENT,
	instructor_name VARCHAR(255),
    instructor_phone VARCHAR(255)
);