# Overview

This Repository contains artifacts to for several use-cases of Microsoft Fabric.

## Basic Tutorials

The [BasicTutorials](/BasicTutorials.md) page walks you through scenarios like :

- Moving Data from [Azure SQL to Fabric DataWarehouse.](/Assests/BasicTutorials/MovingdatafromAzureSQLtoWarehouse.md)
- Projecting data from [Fabric DataWarehouse to PowerBI Reports.](/Assests/BasicTutorials/CreatingWarehouseReport.md)
- Moving Data from [Azure SQL to Fabric Lakehouse.](/Assests/BasicTutorials/MovingdatafromAzureSQLtoLakehouse.md)
- Projecting data from [Fabric Lakehouse to PowerBI Reports.](/Assests/BasicTutorials/CreatingLakehouseReport.md)

Essentially its a starter lab for anyone new to Fabric and wanting to move data from Azure SQL to Microsoft Fabric (both Warehouse and Lakehouse.)

## Incremental Load [WIP]

The [IncrementalLoad](/IncrementalLoad.md) page walks you through incremental loading patterns for scenarios like:

- Moving data from Storage Account using SFTP connection to Fabric Lakehouse 
- Moving data from Azure SQL to Fabric Warehouse 

## Fabric Security

As a SaaS service, Fabric offers a complete security package for the entire platform. The Fabric platform comprises of experiences like include Lakehouse, Data Factory, Synapse Data Engineering, Synapse Data Warehouse, Power BI, and others. To understand the security in Fabric we have broken down Fabric components into the following layers:

| Layer | Feature|
|----------|--------------|
|**[Data Handling and Security](/Assests/Security/DataSecurity.md)**|Encryption, Labelling, Customer Lockbox|
|**[Access Management](/Assests/Security/AccessManagement.md)**| Authentication, Authorization, Workspace Identities, Guest user sharing|
|**[Item Security](/Assests/Security/ItemSecurity.md)**| Share item via link, Impact Analysis, Semantic Model, Data Warehouse, Lakehouse, Data Factory |
|**[Workspace Security](/Assests/Security/WorkspaceSecurity.md)**| Workspace Roles, Access Management, Settings, Retention, Governance, Lineage, State |
|**[Domain Security](/Assests/Security/DomainSecurity.md)**| Domain Roles, Creation, Settings, Assignment, Endorsement, Auditing |
|**[Capacity Security](/Assests/Security/CapacitySecurity.md)**| Tenant Concept and Settings, Capacity License and Features, Access Management, Consumption, Disaster Recovery |
|**[PowerBI Security](/Assests/Security/PowerBISecurity.md)**| PowerBI Embedded Analytics, Row-level security, Object/Column-Level Security, Dynamic Data Masking |
|**[OneLake Security](/Assests/Security/OneLakeSecurity.md)**| Encryption, Restricted External Access, Shortcuts, Least Privilege, BCDR |
|**[Network Security](/Assests/Security/NetworkSecurity.md)**| Private Endpoint, Private Links, Service Tags, URL's and Ports |
