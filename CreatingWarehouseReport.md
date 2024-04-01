# In this article we will cover:

* [Creating a Data Warehouse](#creating-a-data-warehouse)
  * [Moving data from Azure SQL to Fabric DataWarehouse](#moving-data-from-azure-sql-to-fabric-datawarehouse)
    * [Step 1: Create a sample workspace](#step-1)
    * [Step 2: Create an empty warehouse](#step-2)
    * [Step 3: Create a data pipeline](#step-3)
    * [Step 4: Use Copy Data Assist wizard](#step-4)
    * [Step 5: Renaming the pipeline](#step-5)
    * [Step 6: Running the pipeline](#step-6)
    * [Step 7: Verifying results in data warehouse](#step-7)

## Projecting data from Fabric DataWarehouse to PowerBI Reports

For the purpose of this lab we will project 2 visuals in a PowerBI Report
These visual will be showing:

* Which product generates most renew and the quantity in which it is sold ?
* Which city generates the most sales amount ?
* Which customer made the highest purchase ?
* Which sales person sold the most ?

We will create 4 non-materialized views to address the above scenarios. Execute the scripts [here](/Assests/WarehouseScripts/) one by one on your newly created warehouse.    

### Step 1