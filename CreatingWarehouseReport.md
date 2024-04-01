# In this article we will cover:

* [Creating a Data Warehouse report.](#creating-a-data-warehouse-report)
  * [Projecting data from Fabric DataWarehouse to PowerBI Reports.](#projecting-data-from-fabric-datawarehouse-to-powerbi-reports)
    * [Step 1: Creating views in data warehouse.](#step-1)
    * [Step 2: Create an empty report.](#step-2)
    * [Step 3: Use Get data to connect to Fabric Warehouse.](#step-3)

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