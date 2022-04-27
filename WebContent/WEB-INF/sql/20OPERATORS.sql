USE w3schools;

-- 논리연산
-- = : 같다
SELECT * FROM Customers
WHERE Country <> 'Germany';
SELECT * FROM Customers
WHERE Country != 'Germany';

-- 산술 연산
-- +, -, *, /
SELECT 3 + 5;
SELECT 3 - 5;
SELECT 3 * 5;
SELECT 3 / 5;

SELECT * FROM Products ORDER BY Price;
-- min 2.50
-- max 263.50

-- 가장 높은 가격과 가장 낮은 가격 차이
SELECT MAX(Price) - MIN(Price) AS 가격차
FROM Products;

-- 문자열 연결연산
-- CONCAT 함수 사용

SELECT CustomerName, CONCAT(Country, ' ', City, ' ', Address) AS Address FROM Customers;

-- sol : leetcode #1741
