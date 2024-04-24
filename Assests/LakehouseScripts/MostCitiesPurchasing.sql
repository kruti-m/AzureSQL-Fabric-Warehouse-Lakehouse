/*** Create View called MostCitiesPurchasing ***/

CREATE VIEW MostCitiesPurchasing
AS
(
		SELECT Sum(TotalDue) AS "SalesAmount"
			,City
			,[StateProvince]
			,[CountryRegion]
		FROM [salesorderheader] AS OH
		JOIN [customeraddress] AS CA ON OH.CustomerID = CA.CustomerID
		GROUP BY City
				,[StateProvince]
				,[CountryRegion]
)

/*** Verify script

SELECT *
FROM MostCitiesPurchasing
ORDER BY SalesAmount DESC

***/