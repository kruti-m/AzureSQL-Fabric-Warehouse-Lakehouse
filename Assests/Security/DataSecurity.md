# In this article we will cover:

* [Data Handling and Security Layer](#data-handling-and-security-layer)
  * [Encryption](#encryption)
  * [Labelling](#labelling)
  * [Granular permissions](#granular-permissions)
  * [Customer Lockbox](#customer-lockbox)

# Data Handling and Security Layer

|<img src='/Assests/Security/Media/DataLayer.PNG' width='1000' height='550'>|
| ----------- | 

## Encryption

* **Data at Rest** : Fabric data includes customer data as well as system data and metadata.

> :memo: **Note:** In Fabric, a tenant is assigned to a home metadata platform cluster. Tenant metadata, which can include customer data, is stored in this cluster.

All Fabric data stores are encrypted at rest by using Microsoft-managed keys. While data can be processed in memory in an unencrypted state, it's never persisted to permanent storage while in an unencrypted state.

* **Data in Transit** :Inbound Fabric communication also enforces TLS 1.2 and negotiates to TLS 1.3, whenever possible. Outbound Fabric communication to customer-owned infrastructure prefers secure protocols but might fall back to older, insecure protocols (including TLS 1.0) when newer protocols aren't supported.

    |<img src='/Assests/Security/Media/TLSHandshake.PNG' width='450' height='400'>|
    | ----------- |

## Labelling

Security can be set for an entire workspace, for individual items, or through granular permissions in each Fabric engine. Fabric leverages Microsoft Purview for protecting sensitive data and helping ensure compliance with data privacy regulations and requirements.You can [use sensitivity labels from Microsoft Purview Information Protection](https://learn.microsoft.com/abric/get-started/apply-sensitivity-labels#apply-a-label) in combination with built-in Fabric capabilities to manually or automatically tag your organization's data

    |<img src='/Assests/Security/Media/SensitivityLabel.png' width='600' height='450'>|
    | ----------- |

## Granular permissions

Many Fabric engines allow fine-grained access control such as table, column, and row-level security to be defined. Some compute engines in Fabric have their own security models.Engine-specific granular data security:

* [Data warehousing Security](https://learn.microsoft.com/fabric/data-warehouse/security)
* [Data Factory - Set up you Lakehouse Connection](https://learn.microsoft.com/fabric/data-factory/connector-lakehouse-overview)
* [Real-Time Analytics Row-Level Security](https://learn.microsoft.com/azure/data-explorer/kusto/management/row-level-security-policy)

## Customer Lockbox

Most operations and support performed by Microsoft personnel and sub-processors do not require access to customer data. In those rare circumstances where such access is required, [Customer Lockbox for Microsoft Azure](https://learn.microsoft.com/training/modules/m365-compliance-insider-manage-customer-lockbox/) provides an interface for customers to review and approve or reject customer data access requests.It is used in cases where a Microsoft engineer needs to access customer data, whether in response to a customer-initiated support ticket or a problem identified by Microsoft.

|<img src='/Assests/Security/Media/CustomerLockboxWorkflow.png' width='750' height='150'>|
| ----------- |

You can also enable [Customer Lockbox for Microsoft Fabric](https://learn.microsoft.com/fabric/security/security-lockbox#enable-customer-lockbox-for-microsoft-fabric). 