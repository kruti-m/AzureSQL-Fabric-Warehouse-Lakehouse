# Overview

This Repository contains artifacts to move data from Azure SQL to Microsoft Fabric within same region and Azure Subscription through data pipelines. It also elaborates how to project the data using PowerBI.
This is ideal if you are trying Fabric for the first time and create a development environment to understand the data moving patterns.

# Pre-requisites

The [SQLScripts](/Assests/SQLScripts/) will help you create a test Azure SQL database with S0 SLO and 2GB in size and populate it with dummy tables and data.

In order to implement the patterns below, it is expected that the user knows how to create Azure SQL database and have acquired trial or Fabric licenses which will allow them to create workspaces and pipelines. It is implicit that the user would also have the required permissions on both Azure SQL and Microsoft Fabric for the implementation. Users will also be expected to have working knowledge of PowerBI Desktop.

# Data Warehouse tutorials

## Moving Data from Azure SQL to Fabric DataWarehouse

At a high level we will be executing the following steps

- Step 1: Create a sample workspace
- Step 2: Create an empty warehouse
- Step 3: Create a data pipeline
- Step 4: Use Copy Data Assist wizard to bring data from Azure SQL to Warehouse
- Step 5: Renaming the pipeline for load data.
- Step 6: Running the pipeline.
- Step 7: Verifying results in data warehouse.
  
Follow [this](/MovingdatafromAzureSQLtoWarehouse.md) page for detailed instructions

## Projecting data from Fabric DataWarehouse to PowerBI Reports

At a high level we will be executing the following steps

- Step 1: Creating views in data warehouse.
- Step 2: Create an empty report.
- Step 3: Connect to Fabric warehouse using SQL Endpoint.
- Step 4: Mapping view data to visuals in Power BI.
- Step 5: Publish the report in workspace.

Follow [this](/CreatingWarehouseReport.md) page for detailed instructions.

# Lakehouse Tutorials

## Moving Data from Azure SQL to Fabric Lakehouse

At a high level we will be executing the following steps

- Step 1: Using the sample workspace created in earlier labs
- Step 2: Create an empty lakehouse.
- Step 3: Create a data pipeline
- Step 4: Use Copy Data Assist wizard to bring data from Azure SQL to Warehouse
- Step 5: Renaming the pipeline for load data.
- Step 6: Running the pipeline.
- Step 7: Verifying results in lakehouse.
  
Follow [this](/MovingdatafromAzureSQLtoLakehouse.md) page for detailed instructions.

## Projecting data from Fabric Lakehouse to PowerBI Reports
