This Repository contains artifacts to move data from Azure SQL to Microsoft Fabric within same region and Azure Subscription through data pipelines. It also elaborates how to project the data using PowerBI
This is ideal if you are trying Fabric for the first time and create a development environment to understand the data moving patterns. 

# Pre-requisites
The [SQLScripts](/Assests/SQLScripts/) will help you create a test Azure SQL database with S0 SLO and 2GB in size and populate it with dummy tables and data. 

In order to implement the patterns below, it is expected that the user knows how to create Azure SQL database and have acquired trial or Fabric licenses which will allow them to create workspaces and pipelines. It is implicit that the user would also have the required permissions on both Azure SQL and Microsoft Fabric for the implementation.

# Moving Data from Azure SQL to Fabric DataWarehouse
Step 1: [Create a sample workspace](https://learn.microsoft.com/power-bi/collaborate-share/service-create-the-new-workspaces#create-a-workspace) and assign it a name of your choice. Ensure the appropriate users/groups are added and license is select. (Preferred Trail)

<img src='/Assests/Media/CreateWorkspace.PNG' width='350' height='450'><img src='/Assests/Media/AdvancedTab.PNG' width='400' height='450'>

Step 2 : Create a Data Pipeline
Once the workspace is selected navigate to New -> Data Pipeline
<img src='/Assests/Media/NewButton.PNG' width='200' height='100'>
To move the data to a Warehouse we will navigate to the Data Warehouse tab in Fabric.
<img src='/Assests/Media/FabricOptions.PNG' width='300' height='500'>

# Moving Data from Azure SQL to Fabric Lakehouse