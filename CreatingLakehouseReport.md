# In this article we will cover:

* [Creating a lakehouse report.](#creating-a-lakehouse-report)
  * [Projecting data from Fabric Lakehouse to PowerBI Reports.](#projecting-data-from-fabric-lakehouse-to-powerbi-reports)
    * [Step 1: Creating tables from CSV files.](#step-1)

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
<img src='/Assests/Media/RunningViewScripts.gif' width='900' height='350'>

<Extra>

Select the New Query and run the command 
```sql
CREATE SCHEMA Sales
```

|<img src='/Assests/Media/CreateSchema.PNG' width='450' height='250'>|
| -------------- |

