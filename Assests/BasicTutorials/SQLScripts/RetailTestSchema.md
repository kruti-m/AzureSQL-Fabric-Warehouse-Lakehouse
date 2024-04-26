# Contents of the Sample Database
You can create a sample database through the portal or SSMS using the following query which should be executed in master database context with minimum of SQL Server Contributor permissions

```sql
CREATE DATABASE [RetailTest]  (EDITION = 'Standard', SERVICE_OBJECTIVE = 'S0', MAXSIZE = 2 GB) 
WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS, LEDGER = OFF;
GO
ALTER DATABASE [RetailTest] SET  READ_WRITE 
GO
```
Post database creation execute the scripts in SQLScripts folder as per the numbers assigned in the context of the newly created database.

The scripts which are numbered will first create the schema and user defined data types. It will then create the following tables using the schema and UDF's in the Sales Schema.

![TableList](/Assests/BasicTutorials/Media/PNG/TableList.PNG)


The relationship diagram is as follows:

![RelationshipDiagram](/Assests/BasicTutorials/Media/PNG/RetailDiagram.png)

The verification script should display the following result
```sql
CustomerCount
-------------
847
CustomerAddressCount
--------------------
417
ProductCount
------------
294
ProductCategoryCount
--------------------
41
OrderHeaderCount
----------------
31
OrderDetailCount
----------------
541
```
This creates our base Azure SQL Database and contents which will be used to create a Lakehouse in Fabric