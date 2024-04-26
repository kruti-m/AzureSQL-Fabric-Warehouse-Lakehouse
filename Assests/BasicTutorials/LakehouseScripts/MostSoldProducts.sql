/*** Create View called MostSoldProducts ***/

CREATE VIEW MostSoldProducts
AS
(
		SELECT [ProductName],[Color]
			,Sum(UnitPrice - UnitPriceDiscount) AS "Cost"
			,sum(OrderQty) AS "TotalUnits"
			,[ProductDescription]
		FROM salesorderdetail AS OD
		INNER JOIN [product] AS P ON OD.ProductID = P.ProductID
		GROUP BY ProductName
				,ProductDescription
				,Color
)

/*** Verify script

SELECT *
FROM MostSoldProducts
ORDER BY Cost DESC
	,TotalUnits DESC

***/