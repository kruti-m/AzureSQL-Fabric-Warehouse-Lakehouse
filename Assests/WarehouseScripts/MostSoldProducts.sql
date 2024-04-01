/*** Create View called MostSoldProducts ***/

CREATE VIEW Sales.MostSoldProducts
AS
(
		SELECT [ProductName],[Color]
			,Sum(UnitPrice - UnitPriceDiscount) AS "Cost"
			,sum(OrderQty) AS "TotalUnits"
			,[ProductDescription]
		FROM Sales.SalesOrderDetail AS OD
		INNER JOIN [Sales].[Product] AS P ON OD.ProductID = P.ProductID
		GROUP BY ProductName
				,ProductDescription
				,Color
)

/*** Verify script

SELECT *
FROM Sales.MostSoldProducts
ORDER BY Cost DESC
	,TotalUnits DESC

***/