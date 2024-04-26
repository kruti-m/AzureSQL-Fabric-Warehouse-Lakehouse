/*** Create View called MostCitiesPurchasing ***/

CREATE VIEW Sales.MostCitiesPurchasing
AS
(
		SELECT Sum(TotalDue) AS "SalesAmount"
			,City
			,[StateProvince]
			,[CountryRegion]
		FROM [Sales].[SalesOrderHeader] AS OH
		JOIN [Sales].[CustomerAddress] AS CA ON OH.CustomerID = CA.CustomerID
		GROUP BY City
				,[StateProvince]
				,[CountryRegion]
)

/*** Verify script

SELECT *
FROM Sales.MostCitiesPurchasing
ORDER BY SalesAmount DESC

***/