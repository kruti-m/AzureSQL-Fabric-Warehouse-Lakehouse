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
|<img src='/Assests/Media/Lakehouse.PNG' width='4000' height='380'>|<img src='/Assests/Media/LakehouseLabel.PNG' width='380' height='400'>|
| ----------- |----------- |

### Step 3

**[Create a data pipeline](https://learn.microsoft.com/fabric/data-factory/create-first-pipeline-with-sample-data#create-a-data-pipeline)** and **assign it a name** of your choice.
> :bulb: **Tip:** In our example we have selected the pipeline name **'DataIngestion'**.

Once the workspace is selected navigate to **New -> Data Pipeline**. Ensure the right *'Sensitivity Label'* is mapped based on your development requirement.</br>

|<img src='/Assests/Media/SamplePipeline2.PNG' width='520' height='300'>|<img src='/Assests/Media/Pipeline2Label.PNG' width='340' height='370'>|
| ------------- |--------- |

### Step 4

### Step 5

### Step 6

### Step 7