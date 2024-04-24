/*** Create View called TopMostCustomer ***/

CREATE VIEW TopMostCustomer
AS
(
		SELECT [Title]
			,[FirstName]
			,[LastName]
			,sum(TotalDue) AS "TotalPurchases"
			,[CompanyName]
		FROM [salesorderheader] AS OD
		JOIN [customer] AS C ON OD.CustomerID = C.CustomerID
		GROUP BY OD.CustomerID
			,[Title]
			,[FirstName]
			,[LastName]
			,[CompanyName]
)

/*** Verify script

SELECT *
FROM TopMostCustomer
ORDER BY TotalPurchases DESC

***/
