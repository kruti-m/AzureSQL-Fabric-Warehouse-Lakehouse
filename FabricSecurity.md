# Overview

As a SaaS service, Fabric offers a complete security package for the entire platform. The Fabric platform comprises of experiences like include Lakehouse, Data Factory, Synapse Data Engineering, Synapse Data Warehouse, Power BI, and others. To understand the security in Fabric we have broken down Fabric components into the following layers:

## Fabric Components
1. ***Data*** - Where the data actually resides inside Fabric (Warehouse/Lakehouse/Eventhouse/OneLake/Fabric clusters)
1. ***Items*** - These are the building blocks of the Fabric platform. They're the objects that you create and manage in Fabric. There are different types of items, such as data warehouses, data pipelines, semantic models, reports, and dashboards.
1. ***Workspace*** - A logical is a collection of items that brings together different functionality in a single tenant. It acts as a container that leverages capacity for the work that is executed, and provides controls for who can access the items in it. For example, in a sales workspace, users associated with the sales organization can create a data warehouse, run notebooks, create semantic models, create reports, etc.
1. ***Domain*** - A logical grouping of workspaces. Domains are used to organize items in a way that makes sense for your organization. You can group things together in a way that makes it easier for the right people to have access to the right workspaces. For example, you might have a domain for sales, another for marketing, and another for finance.
1. ***Capacity*** - A dedicated set of resources that is available at a given time to be used. A tenant can have one or more capacities associated with it. Capacity defines the ability of a resource to perform an activity or to produce output. Different items consume different capacity at a certain time. Fabric offers capacity through the Fabric SKU and Trials.
1. ***Tenant*** - A dedicated space for organizations to create, store, and manage Fabric items. There's often a single instance of Fabric for an organization, and it's aligned with Microsoft Entra ID. The Fabric tenant maps to the root of OneLake and is at the top level of the hierarchy.You can create any number of workspaces, which you can think of as folders, within a tenant.
1. ***One-lake*** - Microsoft Fabric Lake is also known as OneLake.There is OneLake per tenant. It comes automatically with every Microsoft Fabric tenant and is designed to be the single place for all your analytics data. Its the unified storage layer for Fabric
1. ***Power BI*** - Power BI is an online software service (SaaS, or Software as a Service) offering as part of Microsoft Fabric. Its the unified visualization layer for Fabric. When a Power BI report loads data from OneLake, the data goes through the internal Microsoft network.

|<img src='/Assests/Security/Media/FabricSecurityLayers.PNG' width='1000' height='550'>|
| ----------- | 

## Fabric Layer-wise Security Features

| Layer | Feature|
|----------|--------------|
|**[Data Handling and Security](/Assests/Security/DataSecurity.md)**|Encryption, Labelling, Customer Lockbox|
|**[Access Management](/Assests/Security/AccessManagement.md)**| Authentication, Authorization, Guest user sharing|
|**[Item Security](/Assests/Security/ItemSecurity.md)**| Share item via link, Impact Analysis, Semantic Model, Data Warehouse, Lakehouse, Data Factory |
|**[Workspace Security](/Assests/Security/WorkspaceSecurity.md)**| Workspace Roles, Access Management, Settings, Retention, Governance, Lineage, State |
|**[Domain Security](/Assests/Security/DomainSecurity.md)**| Domain Roles, Creation, Settings, Assignment, Endorsement, Auditing |
|**[Capacity Security](/Assests/Security/CapacitySecurity.md)**| |
