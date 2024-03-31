This Repository contains artifacts to move data from Azure SQL to Microsoft Fabric within same region and Azure Subscription through data pipelines. It also elaborates how to project the data using PowerBI
This is ideal if you are trying Fabric for the first time and create a development environment to understand the data moving patterns. 

# Pre-requisites
The [SQLScripts](/Assests/SQLScripts/) will help you create a test Azure SQL database with S0 SLO and 2GB in size and populate it with dummy tables and data. 

In order to implement the patterns below, it is expected that the user knows how to create Azure SQL database and have acquired trial or Fabric licenses which will allow them to create workspaces and pipelines. It is implicit that the user would also have the required permissions on both Azure SQL and Microsoft Fabric for the implementation.

# Moving Data from Azure SQL to Fabric DataWarehouse
**Step 1:** [Create a sample workspace](https://learn.microsoft.com/power-bi/collaborate-share/service-create-the-new-workspaces#create-a-workspace) and assign it a name of your choice. 
> :bulb: **Tip:** In our example we have selected the workspace name **'AzureSQLtoFabric'**. Ensure the appropriate users/groups are added and license is select. (*Preferred Trail*)

<img src='/Assests/Media/CreateWorkspace.PNG' width='350' height='500'><img src='/Assests/Media/AdvancedTab.PNG' width='450' height='450'>

**Step 2:** [Create and Empty Warehouse](https://learn.microsoft.com/fabric/data-warehouse/create-warehouse#create-a-warehouse-using-the-home-hub).
> :bulb: **Tip:** In our example we have selected the Warehouse name **'RetailTestWarehouse'**. 

<img src='/Assests/Media/Warehouse.PNG' width='500' height='400'>

Ensure the right Sensitivity Label is mapped based on your development requirement.</br>

<img src='/Assests/Media/WarehouseLabel.PNG' width='380' height='400'>

**Step 3:** [Create a Data Pipeline](https://learn.microsoft.com/fabric/data-factory/create-first-pipeline-with-sample-data#create-a-data-pipeline)
> :bulb: **Tip:** In our example we have selected the pipeline name **'IngestData'**. 

Once the workspace is selected navigate to **New -> Data Pipeline**

<img src='/Assests/Media/NewButton.PNG' width='360' height='100'><img src='/Assests/Media/SamplePipeline.PNG' width='600' height='300'>

Ensure the right Sensitivity Label is mapped based on your development requirement.</br>
<img src='/Assests/Media/SensitivityLabel.PNG' width='380' height='400'>

**Step 3:**


# Moving Data from Azure SQL to Fabric Lakehouse
To move the data to a Warehouse we will navigate to the Data Warehouse tab in Fabric.
<img src='/Assests/Media/FabricOptions.PNG' width='300' height='500'>