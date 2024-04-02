# In this article we will cover

* [Creating a Data Lakehouse.](#creating-a-data-lakehouse)
  * [Moving data from Azure SQL to Fabric lakehouse.](#step-1)
    * [Step 1: Create a sample workspace.](#step-1)
    * [Step 2: Create an empty lakehouse.](#step-2)
    * [Step 3: Create a data pipeline.](#step-3)
    * [Step 4: Use Copy Data Assist wizard.](#step-4)
    * [Step 5: Renaming the pipeline.](#step-5)
    * [Step 6: Running the pipeline.](#step-6)
    * [Step 7: Verifying results in data lakehouse.](#step-7)

Once completed follow [this](/CreatingLakehouseReport.md) page to create the reports from lakehouse.

# Creating a Data Lakehouse

## Moving data from Azure SQL to Fabric Lakehouse

(Ignore step 1 if you have already created the workspace in previous labs.)

### Step 1

**[Create a sample workspace](https://learn.microsoft.com/power-bi/collaborate-share/service-create-the-new-workspaces#create-a-workspace)** and **assign it a name** of your choice.
> :bulb: **Tip:** In our example we have selected the workspace name **'AzureSQLtoFabric'**.Ensure the appropriate users/groups are added and license is select. (*Preferred Trail*)

<img src='/Assests/Media/CreateWorkspace.PNG' width='350' height='500'><img src='/Assests/Media/AdvancedTab.PNG' width='450' height='450'>

### Step 2

**[Create an empty lakehouse](https://learn.microsoft.com/fabric/onelake/create-lakehouse-onelake#create-a-lakehouse)** and **assign it a name** of your choice.
> :bulb: **Tip:** In our example we have selected the warehouse name **'RetailTestlakehouse'**.

Once the workspace is selected navigate to **New -> Lakehouse**.
|<img src='/Assests/Media/NewButton.PNG' width='360' height='100'>|
| ----------- |

Ensure the right *'Sensitivity Label'* is mapped based on your development requirement.
|<img src='/Assests/Media/Lakehouse.PNG' width='400' height='380'>|<img src='/Assests/Media/LakehouseLabel.PNG' width='380' height='400'>|
| ----------- |----------|

### Step 3

**[Create a data pipeline](https://learn.microsoft.com/fabric/data-factory/create-first-pipeline-with-sample-data#create-a-data-pipeline)** and **assign it a name** of your choice.
> :bulb: **Tip:** In our example we have selected the pipeline name **'DataIngestion'**.

Once the workspace is selected navigate to **New -> Data Pipeline**. Ensure the right *'Sensitivity Label'* is mapped based on your development requirement.</br>

|<img src='/Assests/Media/SamplePipeline2.PNG' width='520' height='300'>|<img src='/Assests/Media/Pipeline2Label.PNG' width='340' height='370'>|
| ------------- |--------- |

### Step 4

**Mapping the Azure SQL to Pipeline to Lakehouse using Copy Data Assist**.</br>
We now have all the set-up ready. An azure SQL with some data. An empty lakehouse in fabric.</br>
Let's start with mapping the pipeline to bring data.

1. Select Copy Data Assist from the canvas
2. Select the data source as Azure SQL Database.

> :warning: **Warning:** If you have done the previous lab re-use the same connection you used to connect to Azure SQL database. Else proceed to the step below.<img src='/Assests/Media/Pre-selected.gif' width='900' height='350'>

3. Create a new connection with the right connection string and credentials to load the data from the database.</br> :grey_exclamation: **Hint** Use the same credentials with which you populated the data in the database.
<img src='/Assests/Media/SelectDataSource.gif' width='900' height='350'>

4. Select the tables you wish to load
> :warning: **Warning:** Ensure you only select the tables and not the views you previous created.
5. Select the Lakehouse you created in Fabric.</br> :grey_exclamation: **Hint** In this example we are using **'RetailTestLakehouse'**.
 <img src='/Assests/Media/SelectLakehouseDestination.gif' width='900' height='350'>

6. Once the data lakehouse is selected select Files option.
7. The wizard will create the destination files with the same name and *.txt* extension. You can preview each table if required.</br> :grey_exclamation: **Hint** You need not wait for all the tables to be previewed. Click Next.
8. Leave the default *'Settings'* page as is and proceed.
9. You should be able to see the entire flow. Ensure you verify the connections and credentials
<img src='/Assests/Media/ColumMapping2.gif' width='900' height='350'>
<img src='/Assests/Media/EntireFlow2.PNG' width='900' height='350'>

10. Select the default "start data transfer immediately" checkbox enabled.
11. Select *'Save+Run'* at the end of the wizard once satisfied with the flow
<img src='/Assests/Media/Output2.gif' width='900' height='350'>

### Step 5

**Renaming the Activities**</br>
Once the above steps are completed you will be redirected to the pipeline canvas. You need to give appropriate names to the *'ForEach'* and *'CopyData'* activities respectively.

<img src='/Assests/Media/RenamingActivities2.gif' width='800' height='350'>

> :grey_exclamation: **Hint**  In our example we have selected the 'ForEach' activity name **'ForEach_SQLtoLakehouse'** and the 'CopyData' activity name **'Copy_SQLtoLakehouse'**.

|<img src='/Assests/Media/ActivityRename2.PNG' width='220' height='200'>|
|--------- |
### Step 6

**Running the Pipeline**</br>
We are now ready to run our pipeline. Hit run from the main ribbon above and you should be able to see the activity executing.

<img src='/Assests/Media/PipelineRun2.gif' width='850' height='370'>

> :warning: **Warning:** You may notice the following pop-up when the array of table list is being passed. Select Ok.

|<img src='/Assests/Media/Array.PNG' width='320' height='300'>|

### Step 7

Navigate to your **Workspace  -> Lakehouse** and you should be able to see the tables as follows

|<img src='/Assests/Media/FilesLoad.PNG' width='900' height='300'>|
| -------------- |

Verifying the counts

## Projecting data from Fabric Lakehouse to PowerBI Reports

Once completed follow [this](/CreatingLakehouseReport.md) page to create the reports from warehouse