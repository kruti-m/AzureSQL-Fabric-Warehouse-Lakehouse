This Repository contains artifacts to move data from Azure SQL to Microsoft Fabric within same region and Azure Subscription through data pipelines. It also elaborates how to project the data using PowerBI
This is ideal if you are trying Fabric for the first time and create a development environment to understand the data moving patterns. 

# Pre-requisites
The [SQLScripts](/Assests/SQLScripts/) will help you create a test Azure SQL database with S0 SLO and 2GB in size and populate it with dummy tables and data. 

In order to implement the patterns below, it is expected that the user knows how to create Azure SQL database and have acquired trial or Fabric licenses which will allow them to create workspaces and pipelines. It is implicit that the user would also have the required permissions on both Azure SQL and Microsoft Fabric for the implementation.

# Moving Data from Azure SQL to Fabric DataWarehouse

<img src='/Assests/Media/FabricOptions.PNG' width='300' height='500'>

# Moving Data from Azure SQL to Fabric Lakehouse