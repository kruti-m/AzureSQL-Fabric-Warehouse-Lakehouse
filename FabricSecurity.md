# Overview

As a SaaS service, Fabric offers a complete security package for the entire platform. The Fabric platform comprises of experiences like include Lakehouse, Data Factory, Synapse Data Engineering, Synapse Data Warehouse, Power BI, and others. To understand the security in Fabric we have broken down Fabric components into the following layers:

1. ***Data*** - Where the data actually resides inside Fabric (Warehouse/Lakehouse/Eventhouse/OneLake/Fabric clusters)
1. ***Items*** - These are the building blocks of the Fabric platform. They're the objects that you create and manage in Fabric. There are different types of items, such as data warehouses, data pipelines, semantic models, reports, and dashboards.
1. ***Workspace*** - A logical is a collection of items that brings together different functionality in a single tenant. It acts as a container that leverages capacity for the work that is executed, and provides controls for who can access the items in it. For example, in a sales workspace, users associated with the sales organization can create a data warehouse, run notebooks, create semantic models, create reports, etc.
1. ***Domain*** - A logical grouping of workspaces. Domains are used to organize items in a way that makes sense for your organization. You can group things together in a way that makes it easier for the right people to have access to the right workspaces. For example, you might have a domain for sales, another for marketing, and another for finance.
1. ***Capacity*** - A dedicated set of resources that is available at a given time to be used. A tenant can have one or more capacities associated with it. Capacity defines the ability of a resource to perform an activity or to produce output. Different items consume different capacity at a certain time. Fabric offers capacity through the Fabric SKU and Trials.
1. ***Tenant*** - A dedicated space for organizations to create, store, and manage Fabric items. There's often a single instance of Fabric for an organization, and it's aligned with Microsoft Entra ID. The Fabric tenant maps to the root of OneLake and is at the top level of the hierarchy.You can create any number of workspaces, which you can think of as folders, within a tenant.
1. ***One-lake*** - Microsoft Fabric Lake is also known as OneLake.There is OneLake per tenant. It comes automatically with every Microsoft Fabric tenant and is designed to be the single place for all your analytics data. Its the unified storage layer for Fabric
1. ***Power BI*** - Power BI is an online software service (SaaS, or Software as a Service) offering as part of Microsoft Fabric. Its the unified visualization layer for Fabric. When a Power BI report loads data from OneLake, the data goes. 
through the internal Microsoft network.

|<img src='/Assests/Security/Media/FabricSecurityLayers.PNG' width='1000' height='550'>|
| ----------- | 

# Data Handling and Security 

- **Encryption at Rest** : Fabric data includes customer data as well as system data and metadata.
> :memo: **Note:** In Fabric, a tenant is assigned to a home metadata platform cluster. Tenant metadata, which can include customer data, is stored in this cluster.

All Fabric data stores are encrypted at rest by using Microsoft-managed keys. While data can be processed in memory in an unencrypted state, it's never persisted to permanent storage while in an unencrypted state.

- **Encryption in Transit** :Inbound Fabric communication also enforces TLS 1.2 and negotiates to TLS 1.3, whenever possible. Outbound Fabric communication to customer-owned infrastructure prefers secure protocols but might fall back to older, insecure protocols (including TLS 1.0) when newer protocols aren't supported.

    |<img src='/Assests/Security/Media/TLSHandshake.PNG' width='400' height='350'>|
    | ----------- | 

- **Security** :
Security can be set for an entire workspace, for individual items, or through granular permissions in each Fabric engine. Fabric leverages Microsoft Purview for protecting sensitive data and helping ensure compliance with data privacy regulations and requirements.You can [use sensitivity labels from Microsoft Purview Information Protection](https://learn.microsoft.com/abric/get-started/apply-sensitivity-labels#apply-a-label) in combination with built-in Fabric capabilities to manually or automatically tag your organization's data

Many Fabric engines allow fine-grained access control such as table, column, and row-level security to be defined. Some compute engines in Fabric have their own security models.Engine-specific granular data security:

- [Data warehousing Security](https://learn.microsoft.com/fabric/data-warehouse/security)
- [Data Factory - Set up you Lakehouse Connection](https://learn.microsoft.com/fabric/data-factory/connector-lakehouse-overview)
- [Real-Time Analytics Row-Level Security](https://learn.microsoft.com/azure/data-explorer/kusto/management/row-level-security-policy)

Most operations and support performed by Microsoft personnel and sub-processors do not require access to customer data. In those rare circumstances where such access is required, [Customer Lockbox for Microsoft Azure](https://learn.microsoft.com/training/modules/m365-compliance-insider-manage-customer-lockbox/) provides an interface for customers to review and approve or reject customer data access requests.It is used in cases where a Microsoft engineer needs to access customer data, whether in response to a customer-initiated support ticket or a problem identified by Microsoft.
 |<img src='/Assests/Security/Media/CustomerLockboxWorkflow.png' width='800' height='160'>|

You can also enable [Customer Lockbox for Microsoft Fabric](https://learn.microsoft.com/fabric/security/security-lockbox#enable-customer-lockbox-for-microsoft-fabric).