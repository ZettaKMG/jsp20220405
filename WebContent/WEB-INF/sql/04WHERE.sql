USE w3schools;

SELECT * FROM Employees;
SELECT FirstName FROM Employees;
SELECT CustomerName, Address FROM Customers;
SELECT Address, CustomerName FROM Customers;

-- WHERE : 어떤 Row(RECORD)를 선택할 지 결정하는 키워드

-- 예제1) 나라가 멕시코인 고객들 조회
SELECT * FROM Customers
WHERE Country = 'Mexico';

-- 예제2) 나라가 독일인 고객들 조회
SELECT * FROM Customers
WHERE Country = 'Germany';

-- 작은 따옴표 : 문자열값

-- 예제3) 고객 ID가 1번인 고객조회
SELECT * FROM Customers WHERE CustomerID = 1; -- 숫자 형식은 작은 따옴표 안씀 (다만, 써도 상관없음)
SELECT * FROM Customers WHERE CustomerID = 90;
SELECT * FROM Customers WHERE CustomerID = '1';
SELECT * FROM Customers WHERE Country = Germany; -- 문자형식은 작은 따옴표를 꼭 써야 함

-- 예제4) 1번 고객의 이름 조회
SELECT CustomerName FROM Customers WHERE CustomerID = 1;

SELECT CustomerName, Address, City, PostalCode, Country FROM Customers WHERE CustomerID = 1;