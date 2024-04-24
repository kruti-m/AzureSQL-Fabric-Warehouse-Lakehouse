# Creating a Data Lakehouse report

## Projecting data from Fabric Lakehouse to PowerBI Reports

For the purpose of this lab we will project 4 visuals in a PowerBI Report
These visual will be showing:

* Which product generates most revenue and the quantity in which it is sold ?
* Which city generates the most sales amount ?
* Which customer made the highest purchase ?
* Which sales person sold the most ?

### Step 1

We will load the data in CSV files to tables in Lakehouse.To do this we will first create the Sales schema and then load the tables.From the explorer switch to SQL analytics endpoint connection for Lakehouse.

|<img src='/Assests/Media/SwitchSQLEndpoint.PNG' width='900' height='300'>|
| -------------- |

Select the New Query and run the command 
```sql
CREATE SCHEMA Sales
```
|<img src='/Assests/Media/CreateSchema.PNG' width='500' height='270'>|
| -------------- |