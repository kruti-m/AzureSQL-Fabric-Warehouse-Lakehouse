# In this article we will cover:

* [PowerBI Scurity](#workspace-security)
  * [Workspace Roles](#workspace-roles)


# PowerBi Security

Power BI is an online software service (SaaS, or Software as a Service) offering as part 
of Microsoft Fabric that lets you easily and quickly create self-service Business 
Intelligence dashboards, reports, semantic models, and visualizations.

|<img src='/Assests/Security/Media/PowerBiSecurity.PNG' width='1000' height='550'>|
| ----------- | 

Power BI uses two primary data storage resource types:</br>
• Azure Storage </br>
• Azure SQL Databases </br>
In most scenarios, Azure Storage is utilized to persist the data of Power BI artifacts, while Azure SQL Databases are used to persist artifact metadata. All data persisted by Power BI is encrypted by default using Microsoft-managed keys. Customer data stored in Azure SQL Databases is fully encrypted using [Azure SQL's Transparent Data Encryption (TDE)](https://learn.microsoft.com/azure/sql-database/transparent-data-encryption-azure-sql) technology. Customer data stored in Azure 
storage is encrypted using [Azure Storage Encryption](https://learn.microsoft.com/azure/storage/common/storage-service-encryption).


We roughly touched this topic under [Capacity Licenses and Features](/Assests/Security/CapacitySecurity.md/#capacity-license). All Power BI Premium capacities are automatically upgraded to support all the Fabric workloads.
> :memo: **Note:** Power BI Premium P SKUs support Microsoft Fabric. **A and EM SKUs only support Power BI items.**

To enable Power BI Premium (per-user), Go to the admin portal, then select “Users can try Microsoft Fabric paid features” 
|<img src='/Assests/Security/Media//EnablingPPUFabric.png' width='700' height='400'>|
| ----------- | 