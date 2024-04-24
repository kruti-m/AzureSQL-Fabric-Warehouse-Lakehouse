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



<Extra>

Select the New Query and run the command 
```sql
CREATE SCHEMA Sales
```
|<img src='/Assests/Media/CreateSchema.PNG' width='450' height='250'>|
| -------------- |
Once the schema is created we will load the CSV files into tables in Lakehouse.
