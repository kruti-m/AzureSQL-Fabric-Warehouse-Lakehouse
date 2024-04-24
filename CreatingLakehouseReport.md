# Creating a Data Lakehouse report

## Projecting data from Fabric Lakehouse to PowerBI Reports

For the purpose of this lab we will project 4 visuals in a PowerBI Report
These visual will be showing:

* Which product generates most revenue and the quantity in which it is sold ?
* Which city generates the most sales amount ?
* Which customer made the highest purchase ?
* Which sales person sold the most ?

### Step 1

We will load the data in CSV files to tables in Lakehouse. From within the Lakehouse, navigate to view the filename of the file you want to load into a table. Click on the 3 dots next to the filename. Then click on the arrow next to Load to Tables and select New table. Select the appropriate name.

<img src='/Assests/Media/LoadTable.gif' width='900' height='350'>


<Extra>
To do this we will first create the Sales schema and then load the tables.From the explorer switch to SQL analytics endpoint connection for Lakehouse.

|<img src='/Assests/Media/SwitchSQLEndpoint.PNG' width='900' height='300'>|
| -------------- |

Select the New Query and run the command 
```sql
CREATE SCHEMA Sales
```
|<img src='/Assests/Media/CreateSchema.PNG' width='450' height='250'>|
| -------------- |
Once the schema is created we will load the CSV files into tables in Lakehouse.
