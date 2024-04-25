# Overview

This Repository contains artifacts to move data in incremental fashion to Microsoft Fabric. This is done in 2 patterns.
Pattern 1: Moving data from Storage Account using SFTP connection to Fabric Lakehouse within same region and Azure Subscription through data pipelines.
Pattern 2: Moving data from Azure SQL to Fabric Warehouse within the same region and Azure Subscription through data pipelines.

# Lakehouse Tutorials

## Creating the environment

At a high level we will be executing the following steps

- Step 1: Create a storage account with SFTP enabled.
</br> :grey_exclamation: **Hint** Go to *'Advanced'* tab enable heirarchical namespace and SFTP before saving

|<img src='/Assests/IncrementalData/Media/StorageAccountCreate.PNG' width='450' height='300'>|<img src='/Assests/IncrementalData/Media/FileshareEnable.PNG' width='450' height='350'>|
| ----------- | ----------- |

- Step 2: 


## Performing incremental load

At a high level we will be executing the following steps

# Data Warehouse tutorials