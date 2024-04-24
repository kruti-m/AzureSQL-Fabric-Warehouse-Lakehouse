# In this article we will cover:

* [Creating a lakehouse report.](#creating-a-lakehouse-report)
  * [Projecting data from Fabric Lakehouse to PowerBI Reports.](#projecting-data-from-fabric-lakehouse-to-powerbi-reports)
    * [Step 1: Creating tables from CSV files.](#step-1)
    * [Step 2: Creating views in lakehouse.](#step-2)
    * [Step 3: Create an empty report.](#step-3)
    * [Step 4: Connect to Fabric lakehouse using SQL Endpoint.](#step-4)

# Creating a Lakehouse report

## Projecting data from Fabric Lakehouse to PowerBI Reports

For the purpose of this lab we will project 4 visuals in a PowerBI Report
These visual will be showing:

* Which product generates most revenue and the quantity in which it is sold ?
* Which city generates the most sales amount ?
* Which customer made the highest purchase ?
* Which sales person sold the most ?

### Step 1

We will load the data in CSV files to tables in Lakehouse. Within the Lakehouse, navigate to view the filename of the file you want to load into a table. Click on the 3 dots next to the filename. Then click on the arrow next to Load to Tables and select New table. Select the appropriate name.

<img src='/Assests/Media/LoadTable.gif' width='800' height='300'>

Repeat this step till all the CSV are loaded to tables.Upon successful completion you should see the tables as follows
|<img src='/Assests/Media/TablesLoaded.PNG' width='200' height='180'>|
| -------------- |

### Step 2

We will now use the SQL Endpoint to query these tables. From the explorer switch to SQL analytics endpoint connection for Lakehouse.
<img src='/Assests/Media/SQLEndpoint.gif' width='800' height='300'>

We will now create 4 non-materialized views to address the above scenarios. Execute the scripts [here](/Assests/LakehouseScripts/) one by one on your newly created warehouse using *'New SQL Query'* wizard.</br>
:grey_exclamation: **Hint** There is a commented section for each script to verify the results. Run it after creating the view and receiving the "Commands completed successfully" msg in the result box.

|<img src='/Assests/Media/ExecutionMsg.PNG' width='400' height='300'>|<img src='/Assests/Media/SucessfulCompletionMsg.PNG' width='400' height='300'>|
| ------------- |------------- |
<img src='/Assests/Media/RunningViewScripts.gif' width='800' height='300'>

### Step 3

Reports that use the Lakehouse or SQL analytics endpoint can be created in either of the following two tools:

1. [Power BI service](https://learn.microsoft.com/fabric/data-warehouse/reports-power-bi-service)
2. [Power BI Desktop](https://learn.microsoft.com/power-bi/fundamentals/desktop-getting-started)

For this lab we will use the [PowerBI Desktop](https://learn.microsoft.com/power-bi/fundamentals/desktop-get-the-desktop) version to access the SQL analytics endpoint and bring in data from the views we created. Once launched sign-in to your PowerBI Desktop service.After signing-in select **New -> Report.** It should open a blank report like the one below.

|<img src='/Assests/Media/SigninPBI.PNG' width='400' height='300'>|<img src='/Assests/Media/BlankReport.PNG' width='450' height='300'>|
| ------- | ------- |

### Step 4

We are now ready to connect to our Lakehouse. Select **Get data -> more -> Microsoft Fabric -> Lakehouse.** If the PowerBI is signed in correctly you should be able to see the Warehouse load from OneLake
> :bulb: **Tip:** In our example we have selected the warehouse name **'RetailTestlakehouse'**.

> :warning: **Warning:** Do not Connect before selecting SQL Endpoint.

<img src='/Assests/Media/SelectingLakehousePBI.gif' width='900' height='350'>

<img src='/Assests/Media/LakehouseSQLEndpoint.PNG' width='700' height='300'>

### Step 5

Once the SQL endpoint is selected you should be able to select only the view from where we want to populate data.</br>

<img src='/Assests/Media/DirectQueryLakehouse.gif' width='900' height='400'>

| :bulb: **Tip:** In our example we will be selecting views **MostCitiesPurchasing, MostSoldProducts, TopMostCustomer, TopMostSalesPerson** 
<img src='/Assests/Media/ViewsLakehouse.PNG' width='300' height='350'>|
|------- |

For the purpose of this lab we have used the *'Direct Query'* mode. We are now ready to map the view contents to visuals in PowerBI.

|<img src='/Assests/Media/MappingViewstoVisuals.gif' width='900' height='450'>|
|------- |

> :memo: **Note:** This lab expects you are familiar with working with visuals in PowerBI. If not please refer [this](https://learn.microsoft.com/power-bi/visuals/power-bi-map-tips-and-tricks) link for more help.

The final report looks something like below. You can find the sample PBIX file [here](/Assests/)
|<img src='/Assests/Media/FinalReport.PNG' width='900' height='450'>|
|------- |

### Step 6

Once satisfied with the report you can publish it.In Power BI Desktop, choose **File -> Publish -> Publish** to Power BI or select Publish on the Home ribbon.

<img src='/Assests/Media/Publish.png' width='950' height='180'>|
|------- |

Select the destination as your workspace used for this lab.</br>
> :bulb: **Tip:** In our example we have selected the workspace name **'AzureSQLtoFabric'**.

<img src='/Assests/Media/PublishWorkspace.PNG' width='950' height='220'>|
|------- |

You should see the following messages when the report is being published.

|<img src='/Assests/Media/MSG1.PNG' width='600' height='300'>|<img src='/Assests/Media/MSG2.PNG' width='600' height='300'>|
| ---------- | ----------- |

> :memo: **Note:** Ensure the right *'Sensitivity Label'* is mapped based on your development requirement for the report in Warehouse.

> :bulb: **Tip:** Check if you can answer the questions using the report.

* Which product generates most revenue and the quantity in which it is sold ?
* Which city generates the most sales amount ?
* Which customer made the highest purchase ?
* Which sales person sold the most ?

Your Workspace should now contain the Warehouse, Pipeline and Report. You can now schedule the flow for both the sample pipeline and sample report. 