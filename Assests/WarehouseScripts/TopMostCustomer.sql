/*** Create View called TopMostCustomer ***/

CREATE VIEW Sales.TopMostCustomer
AS
(
		SELECT [Title]
			,[FirstName]
			,[LastName]
			,sum(TotalDue) AS "TotalPurchases"
			,[CompanyName]
		FROM [Sales].[SalesOrderHeader] AS OD
		JOIN [Sales].[Customer] AS C ON OD.CustomerID = C.CustomerID
		GROUP BY OD.CustomerID
			,[Title]
			,[FirstName]
			,[LastName]
			,[CompanyName]
)

/*** Verify script

SELECT *
FROM Sales.TopMostCustomer
ORDER BY TotalPurchases DESC

***/
