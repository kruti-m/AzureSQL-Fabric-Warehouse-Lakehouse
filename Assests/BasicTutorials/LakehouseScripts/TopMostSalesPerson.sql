/*** Create View called TopMostSalesPerson ***/
CREATE VIEW TopMostSalesPerson
AS
(
		SELECT sum(TotalDue) AS "TotalSales"
			,[SalesPerson]
		FROM [salesorderheader] AS OD
		JOIN [customer] AS C ON OD.CustomerID = C.CustomerID
		GROUP BY [SalesPerson]
)

/*** Verify script

SELECT *
FROM TopMostSalesPerson
ORDER BY TotalSales DESC

***/
