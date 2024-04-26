/****** Script for SelectTopNRows command ******/
SELECT COUNT(*) AS CustomerCount FROM [Sales].[Customer] 
SELECT COUNT(*) AS CustomerAddressCount FROM [Sales].[CustomerAddress] 
SELECT COUNT(*) AS ProductCount FROM [Sales].[Product] 
SELECT COUNT(*) AS ProductCategoryCount FROM [Sales].[ProductCategory] 
SELECT COUNT(*) AS OrderHeaderCount FROM [Sales].[SalesOrderHeader] 
SELECT COUNT(*) AS OrderDetailCount FROM [Sales].[SalesOrderDetail] 