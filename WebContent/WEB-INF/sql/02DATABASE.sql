SELECT * FROM sys.sys_config;
SELECT * FROM sys_config;

-- database 이동
USE sys;
SELECT * FROM sys_config;
SELECT * FROM w3schools.Customers;
-- SELECT * FROM Customers; <- database sys 안에 없으므로 안됨

USE w3schools;
SELECT * FROM Customers;