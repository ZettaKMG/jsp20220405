USE w3schools;

-- safe mode 해제
SET SQL_SAFE_UPDATES = 0;

SELECT * FROM Employees ORDER BY EmployeeID DESC;
DESC Employees;
UPDATE Employees
SET LastName = 'Kim',
	FirstName = 'JaeJun'
WHERE EmployeeID = 1;

-- 예제1) 1번 고객(Customers Table)의
-- 계약자명(ContactName)은 'Alfred Schmidt'
-- 도시(City)는 'Frankfurt'로 변경
SELECT * FROM Customers ORDER BY CustomerID DESC;
UPDATE Customers
SET ContactName = 'Alfred Schmidt',
	City = 'Frankfurt'
WHERE CustomerID = 1;    

UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

SELECT * FROM Customers WHERE Country = 'Mexico';

SELECT * FROM Products;

UPDATE Products
SET Price = Price + 2;

SELECT 1 = 1; -- true 1
SELECT 1 = 2; -- false 0
SELECT 1 = '1'; -- true 1