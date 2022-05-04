USE w3schools;

SELECT * FROM Orders;
-- 1996-07-04에 주문한 고객의 이름
SELECT o.OrderDate, c.CustomerName, o.EmployeeID 
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04에 주문한 고객의 이름과 처리한 직원의 이름
SELECT o.OrderDate, c.CustomerName, concat(e.FirstName, ' ', e.LastName) EmployeeName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
			  JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04 의 주문을 처리한 직원명과 배송자명 조회
-- Orders, Employees, Shippers
SELECT o.OrderDate, s.ShipperName, concat(e.FirstName, ' ', e.LastName) EmployeeName
FROM Orders o JOIN Employees e ON o.EmployeeID = e.EmployeeID
			  JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-08 에 주문한 고객명, 처리한 직원명, 배송한 배송자명
-- Orders, Customers, Employees, Shippers
SELECT o.OrderDate, c.CustomerName, CONCAT(e.FirstName, ' ', e.LastName) EmployeeName, s.ShipperName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
			  JOIN Employees e ON o.EmployeeID = e.EmployeeID
              JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-08';

-- 1996-07-04 에 주문한 상품명(들)
-- OrderDetails, Orders, Products
SELECT o.OrderDate, p.ProductName, od.Quantity, p.Price, (od.Quantity * p.Price) TotalPrice
FROM Products p JOIN OrderDetails od ON p.ProductID = od.ProductID
				JOIN Orders o ON o.OrderID = od.OrderID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-08 에 각 고객의 주문 총액
-- Orders, OrderDetails, Products, Customers
SELECT * FROM Orders WHERE OrderDate = '1996-07-08';
SELECT o.OrderDate, p.ProductName, od.Quantity, p.Price, SUM(od.Quantity * p.Price) TotalPrice, c.CustomerName
FROM Products p JOIN OrderDetails od ON p.ProductID = od.ProductID
				JOIN Orders o ON o.OrderID = od.OrderID
				JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-08'
GROUP BY c.CustomerID;

-- 1996년 가장 많은 주문을 받은 직원
-- 1996년 직원별 처리 주문 총 금액을 조회(금액이 높은 -> 낮은)
-- Employees, Orders, OrdersDetails, Products
SELECT * FROM Orders WHERE OrderDate BETWEEN '1996-01-01' AND '1996-12-31';
SELECT CONCAT(e.FirstName, ' ', e.LastName) EmployeeName, COUNT(o.OrderID), SUM(p.Price * od.Quantity) TotalIncome
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
			  JOIN Employees e ON o.EmployeeID = e.EmployeeID
              JOIN Products p ON p.ProductID = od.ProductID
WHERE OrderDate BETWEEN '1996-01-01' AND '1996-12-31'
GROUP BY e.EmployeeID
ORDER BY 3 DESC;

-- 가장 많은 수량이 팔린 카테고리(높은 -> 낮은)
-- 카테고리별 판매수량 (높은 -> 낮은) 전체기간
-- Categories, OrderDetails, Products
SELECT c.CategoryID, c.CategoryName, SUM(od.Quantity) TotalCount
FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
				  JOIN OrderDetails od ON od.ProductID = p.ProductID
-- 				  JOIN Orders o ON o.OrderID = od.OrderID
-- WHERE o.OrderDate BETWEEN '1996-01-01' AND '1997-12-31'
GROUP BY c.CategoryID
ORDER BY 3 DESC;

-- '1996년 7월' 판매량
SELECT c.CategoryID, c.CategoryName, SUM(IFNULL(od.Quantity,0)) TotalCount
FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
				  JOIN OrderDetails od ON od.ProductID = p.ProductID
                  JOIN Orders o ON o.OrderID = od.OrderID
WHERE o.OrderDate BETWEEN '1996-07-01' AND '1996-07-31'
GROUP BY c.CategoryID
ORDER BY 3 DESC;

-- '1996-08-01 ~ '1996-08-07' (판매량이 0인 항목은 0 표시되게끔)
SELECT c.CategoryID, c.CategoryName, SUM(IFNULL(od.Quantity, 0)) TotalCount
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID AND o.OrderDate BETWEEN '1996-08-01' AND '1996-08-07'
			  JOIN Products p ON od.ProductID = p.ProductID
			  RIGHT JOIN Categories c ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID
ORDER BY 3 DESC;