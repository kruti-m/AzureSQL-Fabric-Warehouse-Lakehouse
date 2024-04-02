# In this article we will cover:

* [Creating a Data Warehouse report.](#creating-a-data-warehouse-report)
  * [Projecting data from Fabric DataWarehouse to PowerBI Reports.](#projecting-data-from-fabric-datawarehouse-to-powerbi-reports)
    * [Step 1: Creating views in data warehouse.](#step-1)
    * [Step 2: Create an empty report.](#step-2)
    * [Step 3: Connect to Fabric warehouse using SQL Endpoint.](#step-3)
    * [Step 4: Mapping view data to visuals in Power BI.](#step-4)
    * [Step 5: Publish the report in workspace.]

# Creating a Data Warehouse report

## Projecting data from Fabric DataWarehouse to PowerBI Reports

For the purpose of this lab we will project 2 visuals in a PowerBI Report
These visual will be showing:

* Which product generates most revenue and the quantity in which it is sold ?
* Which city generates the most sales amount ?
* Which customer made the highest purchase ?
* Which sales person sold the most ?

### Step 1

We will create 4 non-materialized views to address the above scenarios. Execute the scripts [here](/Assests/WarehouseScripts/) one by one on your newly created warehouse using *'New SQL Query'* wizard.</br>
:grey_exclamation: **Hint** There is a commented section for each script to verify the results. Run it after creating the view and receiving the "Commands completed successfully" msg in the result box.

|<img src='/Assests/Media/ExecutionMsg.PNG' width='400' height='300'>|<img src='/Assests/Media/SucessfulCompletionMsg.PNG' width='400' height='300'>|
| ------------- |------------- |
<img src='/Assests/Media/CreatingViews.gif' width='900' height='350'>

### Step 2 

Reports that use the Warehouse or SQL analytics endpoint can be created in either of the following two tools:

1. [Power BI service](https://learn.microsoft.com/fabric/data-warehouse/reports-power-bi-service)
2. [Power BI Desktop](https://learn.microsoft.com/power-bi/fundamentals/desktop-getting-started)

For this lab we will use the [PowerBI Desktop](https://learn.microsoft.com/power-bi/fundamentals/desktop-get-the-desktop) version to access the SQL analytics endpoint and bring in data from the views we created. Once launched sign-in to your PowerBI Desktop service.After signing-in select **New -> Report.** It should open a blank report like the one below.

|<img src='/Assests/Media/SigninPBI.PNG' width='400' height='300'>|<img src='/Assests/Media/BlankReport.PNG' width='450' height='300'>|
| ------- | ------- |

### Step 3

We are now ready to connect to our Datawarehouse. Select **Get data -> more -> Microsoft Fabric -> Warehouses.** If the PowerBI is signed in correctly you should be able to see the Warehouse load from OneLake
> :bulb: **Tip:** In our example we have selected the warehouse name **'RetailTestWarehouse'**.

> :warning: **Warning:** Do not Connect before selecting SQL Endpoint.

<img src='/Assests/Media/SelectinWarehousePBI.gif' width='800' height='350'>

<img src='/Assests/Media/SQLEndpoint.PNG' width='700' height='350'>

### Step 4

Once the SQL endpoint is selected you should be able to select only the view from where we want to populate data.</br>

<img src='/Assests/Media/DirectQuery.gif' width='800' height='450'>

| :bulb: **Tip:** In our example we will be selecting views **Sales.MostCitiesPurchasing, Sales.MostSoldProducts, Sales.TopMostCustomer, Sales.TopMostSalesPerson** 
<img src='/Assests/Media/Views.PNG' width='350' height='180'>|
|------- |

For the purpose of this lab we have used the *'Direct Query'* mode. We are now ready to map the view contents to visuals in PowerBI.

|<img src='/Assests/Media/MappingViewstoVisuals.gif' width='900' height='450'>|
|------- |

> :memo: **Note:** This lab expects you are familiar with working with visuals in PowerBI. If not please refer [this](https://learn.microsoft.com/power-bi/visuals/power-bi-map-tips-and-tricks) link for more help.

The final report looks something like below. You can find the sample PBIX file [here](/Assests/WarehouseScripts/WarehouseSampleRetailReport.pbix)
|<img src='/Assests/Media/FinalReport.PNG' width='900' height='450'>|
|------- |

### Step 5

Once satisfied with the report you can publish it.In Power BI Desktop, choose **File -> Publish -> Publish** to Power BI or select Publish on the Home ribbon.

<img src='/Assests/Media/Publish.png' width='950' height='180'>|
|------- |

Select the destination as your workspace used for this lab.</br>
> :bulb: **Tip:** In our example we have selected the workspace name **'AzureSQLtoFabric'**.
You should see the following messages when the report is being published.

|<img src='/Assests/Media/MSG1.PNG' width='600' height='300'>|<img src='/Assests/Media/MSG2.PNG' width='600' height='300'>|
| ---------- | ----------- |

> :memo: **Note:** Ensure the right *'Sensitivity Label'* is mapped based on your development requirement for the report in Warehouse.

Your Workspace should now contain the Warehouse, Pipeline and Report. You can now schedule the flow for both the sample pipeline and sample report. 