# In this article we will cover:

* [OneLake Security](#onelake-security)
  * [Encryption](#encryption)
  * [Restricted External Access](#restricted-external-access)
  * [Shortcuts](#shortcuts)
    * [Trusted Workspace Access](#trusted-workspace-access)
  * [Least Privilege](#least-privilege)
  * [BCDR](#bcdr)

# OneLake Security

OneLake comes automatically with every Microsoft Fabric tenant and is designed to be the single place for all your analytics data. OneLake brings customers:

* One data lake for the entire organization.
* One copy of data for use with multiple analytical engines.

|<img src='/Assests/Security/Media/OnelakeSecurity.PNG' width='1000' height='550'>|
| ----------- | 

**Every customer tenant has exactly one OneLake.**
Any data that lands in OneLake is governed by default. Within a tenant, you can create any number of workspaces. Within a workspace, you can create data items and you access all data in OneLake through data items.Fabric stores Lakehouses, Warehouses, and other items in OneLake.OneLake is built on top of Azure Data Lake Storage (ADLS) Gen2 or the Windows file system like a hierarchical data lake. It can support any type of file, structured or unstructured. This structure allows you to set security at different levels in the hierarchy to govern access. OneLake is the OneDrive for data.Items always live within workspaces and workspaces always live directly under the OneLake namespace. 

|<img src='/Assests/Security/Media/OneLake.png' width='450' height='270'>|
| ----------- |

By now you would be familiar that users can't view or use data in the Items unless you give them access to them either at the item/workspace/capacity level.

|<img src='/Assests/Security/Media/OneLakepermission.png' width='500' height='430'>|
| ----------- |

## Encryption

Data stored in OneLake is encrypted at rest by default using Microsoft-managed key. Microsoft-managed keys are rotated appropriately. Data in OneLake is encrypted and decrypted transparently and it is FIPS 140-2 compliant.Data in transit across the public internet between Microsoft services is always encrypted with at least TLS 1.2. Fabric negotiates to TLS 1.3 whenever possible.

## Restricted External Access

OneLake allows you to restrict access to data from applications running outside of Fabric environments.These settings are available at the tenant level.When you turn this switch ON, users can access data via all sources. When you turn the switch OFF, users can't access data via applications running outside of Fabric environments. For example, users can access data via applications like Azure Databricks, custom applications using Azure Data Lake Storage (ADLS) APIs, or OneLake file explorer.

|<img src='/Assests/Security/Media/TenantOneLakeSetting.PNG.png' width='700' height='450'>|
| ----------- |

## Shortcuts

Shortcuts are objects in OneLake that point to other storage locations. The location can be internal or external to OneLake. Shortcuts appear as folders in OneLake and any workload or service that has access to OneLake can use them. Shortcuts behave like symbolic links. They're an independent object from the target. If you delete a shortcut, the target remains unaffected. If you move, rename, or delete a target path, the shortcut can break.

|<img src='/Assests/Security/Media/ShortcutsOneLake.png' width='600' height='300'>|
| ----------- |

You can follow the links below which will walk you through the different Shortcut options available in OneLake today

1. [Create an Azure Data Lake Storage Gen2 shortcut](https://learn.microsoft.com/fabric/onelake/create-adls-shortcut)
2. [Create an Amazon S3 shortcut](https://learn.microsoft.com/fabric/onelake/create-s3-shortcut)
3. [Create an S3 compatible shortcut](https://learn.microsoft.com/fabric/onelake/create-s3-compatible-shortcut)
4. [Create a Google Cloud Storage shortcut](https://learn.microsoft.com/fabric/onelake/create-gcs-shortcut)
5. [Create shortcuts to on-premises data](https://learn.microsoft.com/fabric/onelake/create-on-premises-shortcut)

### Trusted Workspace Access

Fabric allows you to access firewall-enabled Azure Data Lake Storage (ADLS) Gen2 accounts in a secure manner. Fabric workspaces that have a workspace identity can securely access ADLS Gen2 accounts with public network access enabled from selected virtual networks and IP addresses. You can limit ADLS Gen2 access to specific Fabric workspaces. Trusted workspace access is generally available. Fabric workspace identity can only be created in workspaces associated with a Fabric capacity (F64 or higher).

**Pre-requisites :**

1. A Fabric workspace associated with a Fabric capacity. See Workspace identity.
2. Create a workspace identity associated with the Fabric workspace.
3. The user account or service principal used for creating the shortcut should have Azure RBAC roles on the storage account. The principal must have a Storage Blob Data Contributor, Storage Blob Data owner, or Storage Blob Data Reader role at the storage account scope, or a Storage Blob Delegator role at the storage account scope in addition to a Storage Blob Data Reader role at the container scope.
4. Configure a [resource instance rule](https://learn.microsoft.com/fabric/security/security-trusted-workspace-access#resource-instance-rule) for the storage account.

## Least Privilege

Least privilege access is a fundamental security principle in computer science that advocates for restricting users' permissions and access rights to only those permissions necessary to perform their tasks.There are 2 ways to do this:

1. [**Secure by workload**](https://learn.microsoft.com/fabric/onelake/security/best-practices-secure-data-in-onelake#secure-by-workload): There are three main workloads for OneLake where this is relevant: Apache Spark/OneLake access, SQL Endpoints, and Semantic Models.
1. [**Secure by use case**](https://learn.microsoft.com/fabric/onelake/security/best-practices-secure-data-in-onelake#secure-by-use-case). There are three main layers to this. Workspace role management, item sharing/management, OneLake permission management.

## BCDR

You can enable or disable BCDR (Business Continuity and Disaster Recovery) for a specific capacity through the Capacity Admin Portal. If your capacity has BCDR activated, your data is duplicated and stored in two different geographic regions, making it geo-redundant. The choice of the secondary region is determined by Azure's standard region pairings and can't be modified. All data in OneLake is accessed through data items. These data items can reside in different regions depending on their workspace, as a workspace is created under a capacity tied to a specific region.

If a disaster makes the primary region unrecoverable, OneLake may initiate a regional failover. Once the failover completes, you can use OneLake's APIs through the global endpoint to access your data in the secondary region. Data replication to the secondary region is asynchronous, so any data not copied during the disaster is lost. After a failover, the new primary data center will have local redundancy only.

You can also consider [soft delete option](https://learn.microsoft.com/fabric/onelake/onelake-disaster-recovery#soft-delete-for-onelake-files) which is chargeable.