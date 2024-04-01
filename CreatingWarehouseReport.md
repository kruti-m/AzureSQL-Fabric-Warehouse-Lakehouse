# In this article we will cover:

* [Creating a Data Warehouse report](#creating-a-data-warehouse-report)
  * [Projecting data from Fabric DataWarehouse to PowerBI Reports](#projecting-data-from-fabric-datawarehouse-to-powerbi-reports)
    * [Step 1: Creating views in data warehouse](#step-1

# Creating a Data Warehouse report

## Projecting data from Fabric DataWarehouse to PowerBI Reports

For the purpose of this lab we will project 2 visuals in a PowerBI Report
These visual will be showing:

* Which product generates most renew and the quantity in which it is sold ?
* Which city generates the most sales amount ?
* Which customer made the highest purchase ?
* Which sales person sold the most ?

### Step 1

We will create 4 non-materialized views to address the above scenarios. Execute the scripts [here](/Assests/WarehouseScripts/) one by one on your newly created warehouse using *'New SQL Query'* wizard.</br>
:grey_exclamation: **Hint** There is a commented section for each script to verify the results. Run it after creating the view and receiving the "Commands completed successfully" msg in the result box.

|<img src='/Assests/Media/ExecutionMsg.PNG' width='400' height='300'>|<img src='/Assests/Media/SucessfulCompletionMsg.PNG' width='400' height='300'>|
| ------------- |------------- |
<img src='/Assests/Media/CreatingViews.gif' width='900' height='350'>

