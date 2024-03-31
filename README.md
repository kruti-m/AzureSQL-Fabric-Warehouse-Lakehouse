This Repository contains artifacts to move data from Azure SQL to Microsoft Fabric within same region and Azure Subscription through data pipelines. It also elaborates how to project the data using PowerBI
This is ideal if you are trying Fabric for the first time and create a development environment to understand the data moving patterns.

# Pre-requisites

The [SQLScripts](/Assests/SQLScripts/) will help you create a test Azure SQL database with S0 SLO and 2GB in size and populate it with dummy tables and data.

In order to implement the patterns below, it is expected that the user knows how to create Azure SQL database and have acquired trial or Fabric licenses which will allow them to create workspaces and pipelines. It is implicit that the user would also have the required permissions on both Azure SQL and Microsoft Fabric for the implementation.

## Moving Data from Azure SQL to Fabric DataWarehouse

### Step 1

**[Create a sample workspace](https://learn.microsoft.com/power-bi/collaborate-share/service-create-the-new-workspaces#create-a-workspace)** and **assign it a name** of your choice.
> :bulb: **Tip:** In our example we have selected the workspace name **'AzureSQLtoFabric'**.Ensure the appropriate users/groups are added and license is select. (*Preferred Trail*)

<img src='/Assests/Media/CreateWorkspace.PNG' width='350' height='500'><img src='/Assests/Media/AdvancedTab.PNG' width='450' height='450'>

### Step 2

**[Create an empty warehouse](https://learn.microsoft.com/fabric/data-warehouse/create-warehouse#create-a-warehouse-using-the-home-hub)** and **assign it a name** of your choice.
> :bulb: **Tip:** In our example we have selected the Warehouse name **'RetailTestWarehouse'**.

Once the workspace is selected navigate to **New -> Warehouse**.
|<img src='/Assests/Media/NewButton.PNG' width='360' height='100'>|
| ----------- |

Ensure the right Sensitivity Label is mapped based on your development requirement.
|<img src='/Assests/Media/Warehouse.PNG' width='400' height='400'>|<img src='/Assests/Media/WarehouseLabel.PNG' width='380' height='400'>|
| ----------- |--------- |

### Step 3

**[Create a data pipeline](https://learn.microsoft.com/fabric/data-factory/create-first-pipeline-with-sample-data#create-a-data-pipeline)** and **assign it a name** of your choice.
> :bulb: **Tip:** In our example we have selected the pipeline name **'IngestData'**.

Once the workspace is selected navigate to **New -> Data Pipeline**. Ensure the right Sensitivity Label is mapped based on your development requirement.</br>

|<img src='/Assests/Media/SamplePipeline.PNG' width='500' height='310'>|<img src='/Assests/Media/PipelineLabel.PNG' width='340' height='370'>|
| ------------- |-------- |

### Step 4

**Mapping the Azure SQL to Pipeline to Warehouse using Copy Data Assist**.</br>
We now have all the set-up ready. Azure SQL with some data. An empty Warehouse in Fabric. Let's start with mapping the pipeline to bring data.

1. Select Copy Data Assist from the Canvas
2. Select the data source as Azure SQL Database
3. Create a new connection with the right connection string and credentials to load the data from the database.</br> :grey_exclamation: **Hint** Use the same credentials with which you populated the data in the database.
<img src='/Assests/Media/SelectDataSource.gif' width='900' height='350'>

4. Select the tables you wish to load
5. Select the Datawarehouse you created in Fabric.</br> :grey_exclamation: **Hint** In this example we are using **'RetailTestWarehouse'**.
 <img src='/Assests/Media/SelectDataDestination.gif' width='900' height='350'>

6. Once the Data Warehouse is selected select Load to new tables option.
7. The wizard will create the destination tables with the same name. You can preview each table if required.</br> :grey_exclamation: **Hint** You need not wait for all the tables to be previewed. Click Next.
8. Leave the default Settings page as is and proceed.
9. You should be able to see the entire flow. Ensure you verify the connections and credentials
<img src='/Assests/Media/ColumnMapping.gif' width='900' height='350'>
<img src='/Assests/Media/EntireFlow.PNG' width='900' height='350'>

10. Select the default "start data transfer immediately" checkbox enabled.
11. Select "Save+Run" at the end of the wizard once satisfied with the flow
<img src='/Assests/Media/Output.gif' width='900' height='350'>

### Step 5

**Renaming the Activities**</br>
Once the above steps are completed you will be redirected to the Pipeline canvas. You need to give appropriate names to the *'ForEach'* and *'CopyData'* activities respectively.

<img src='/Assests/Media/RenamingActivities.gif' width='900' height='350'>

> :bulb: **Tip:** In our example we have selected the 'ForEach' activity name **'ForEachLoopSQLtoWarehouseTable'** and the 'CopyData' activity name **'CopyfromSQLtoWarehouse'**.

|<img src='/Assests/Media/ActivityRename.PNG' width='320' height='300'>|
|--------- |
