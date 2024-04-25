# Overview

This Repository contains artifacts to move data in incremental fashion to Microsoft Fabric. This is done in 2 patterns.
Pattern 1: Moving data from Storage Account using SFTP connection to Fabric Lakehouse within same region and Azure Subscription through data pipelines.
Pattern 2: Moving data from Azure SQL to Fabric Warehouse within the same region and Azure Subscription through data pipelines.

# Pre-requisites

In order to implement the patterns below, it is expected that the user knows how to create Azure Storage accounts and have acquired trial or Fabric licenses which will allow them to create workspaces and pipelines. It is implicit that the user would also have the required permissions on both Azure Storage accounts and Microsoft Fabric for the implementation. 

# Lakehouse Tutorials

## Creating the environment

At a high level we will be executing the following steps

- Step 1: Create a storage account with SFTP enabled.
</br> :grey_exclamation: **Hint** Go to *'Advanced'* tab enable heirarchical namespace and SFTP before saving

|<img src='/Assests/IncrementalData/Media/StorageAccountCreate.PNG' width='450' height='300'>|<img src='/Assests/IncrementalData/Media/FileshareEnable.PNG' width='450' height='350'>|
| ----------- | ----------- |
> :warning: **Warning:** You may not be able to use the exact same storage account name if the namespace is already taken. You can try with your own naming conventions

- Step 2: Create


## Performing incremental load

At a high level we will be executing the following steps

# Data Warehouse tutorials

## Creating the environment

At a high level we will be executing the following steps
- Step 1: Create a database with the name 