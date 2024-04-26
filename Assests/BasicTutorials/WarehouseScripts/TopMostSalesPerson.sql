/*** Create View called TopMostSalesPerson ***/
CREATE VIEW Sales.TopMostSalesPerson
AS
(
		SELECT sum(TotalDue) AS "TotalSales"
			,[SalesPerson]
		FROM [Sales].[SalesOrderHeader] AS OD
		JOIN [Sales].[Customer] AS C ON OD.CustomerID = C.CustomerID
		GROUP BY [SalesPerson]
)

/*** Verify script

SELECT *
FROM Sales.TopMostSalesPerson
ORDER BY TotalSales DESC

***/
