USE w3schools;

-- 주문한 적 없는 고객명 조회(JOIN, SUBQUERY)
-- Orders, Customers
-- JOIN
SELECT c.CustomerName FROM Customers c LEFT JOIN Orders o 
ON o.CustomerID = c.CustomerID 
WHERE o.OrderID IS NULL
ORDER BY 1;

-- SUBQUERY
SELECT CustomerName FROM Customers 
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders)
ORDER BY 1;


-- 고객별 주문 수 (JOIN, SUBQUERY)
-- JOIN
SELECT c.CustomerName, COUNT(o.OrderID) NumOfOrders
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY 1;

-- SUBQUERY
SELECT c.CustomerName, (SELECT COUNT(o.OrderID) FROM Orders o WHERE c.CustomerID = o.CustomerID) NumOfOrders
FROM Customers c
ORDER BY 1;


-- 상품명과 카테고리명 조회
-- JOIN
SELECT p.ProductName, c.CategoryName
FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID
ORDER BY 1;

-- SUBQUERY
SELECT p.ProductName, (SELECT CategoryName FROM Categories c WHERE c.CategoryID = p.CategoryID) CategoryName
FROM Products p
ORDER BY 1;

-- Suppliers, Customers
-- 고객과 공급자가 모두 있는 나라 조회 (JOIN, SUBQUERY)
-- JOIN
SELECT DISTINCT c.Country FROM Customers c JOIN Suppliers s
ON s.Country = c.Country
ORDER BY 1;

-- SUBQUERY
SELECT DISTINCT Country FROM Suppliers
WHERE Country IN (SELECT Country FROM Customers)
ORDER BY 1;