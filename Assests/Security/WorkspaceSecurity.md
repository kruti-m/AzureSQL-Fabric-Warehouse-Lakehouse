# In this article we will cover:

* [Workspace Scurity](#workspace-security)
  * [Share item via link](#share-item-via-link)
  * [Semantic Model](#semantic-model)
  * [Data Warehouse](#data-warehouse)
  * [Lakehouse](#lakehouse)
  * [Data Factory](#data-factory)

# Workspace Security

Workspace roles are used to control access to workspaces and the content within them. All Fabric items (lakehouses, notebooks, pipelines, etc.) are stored in OneLake and accessed via Fabric workspaces. Microsoft Fabric workspaces sit on top of OneLake and divide the data lake into separate containers that can be secured independently. Workspace roles in Microsoft Fabric extend the Power BI workspace roles by associating new Microsoft Fabric capabilities such as data integration and data exploration with existing workspace roles.

|<img src='/Assests/Security/Media/WorkspaceSecurity.PNG' width='1000' height='550'>|
| ----------- | 

A Fabric administrator can assign workspace roles to individuals.You can either assign roles to individuals or to security groups, Microsoft 365 groups, and distribution lists. Workspace roles are confined to a specific workspace and don't apply to other workspaces, the capacity the workspace is in, or the tenant.

There are four Workspace roles and they apply to all items within the workspace.Users that don't have any of these roles, can't access the workspace. The roles are:

* Viewer - Can view all content in the workspace, but can't modify it.
* Contributor - Can view and modify all content in the workspace.
* Member - Can view, modify, and share all content in the workspace.
* Admin - Can view, modify, share, and manage all content in the workspace, including managing permissions.

This table shows a small set of the capabilities each role has. For a full and more 
detailed list, see [Microsoft Fabric workspace roles](https://learn.microsoft.com/fabric/get-started/roles-workspaces#-workspace-roles). After you add or remove workspace access for a user or a group, the permission change only takes effect the next time the user logs into Microsoft Fabric.


## Share item via link

You can also use [item sharing via link](https://learn.microsoft.com/fabric/get-started/share-items#share-an-item-via-link) option to grant and manage item-level permissions in scenarios where:

1. You want to collaborate with colleagues who don't have a role in the workspace.
2. You want to grant additional item level-permissions for colleagues who already have a role in the workspace.

In the list of items, or in an open item, select the Share button Screenshot of share button. The Create and send link dialog opens. Select People in your organization can view.

|<img src='/Assests/Security/Media/ShareViaLink.png' width='270' height='270'>|
| ----------- |

You have the following options:
* **People in your organization**: This type of link allows people in your organization to access this item. It doesn't work for external users or guest users.
* **People with existing access**: This type of link generates a URL to the item, but it doesn't grant any access to the item. Use this link type if you just want to send a link to somebody who already has access.
* **Specific people**: This type of link allows specific people or groups to access the report. If you select this option, enter the names or email addresses of the people you wish to share with. This link type also lets you share to guest users in your organization's Microsoft Entra ID. You can't share to external users who aren't guests in your organization.

## Semantic model

In Power BI, semantic model creators can control who has access to their data by using the [Build permission](https://learn.microsoft.com/power-bi/connect-data/service-datasets-build-permissions). The semantic model manage permissions page enables you to monitor and manage access to your semantic model. It has two tabs that help you control access to your semantic model:

* **[Direct access](https://learn.microsoft.com/power-bi/connect-data/service-datasets-manage-access-permissions#open-the-semantic-model-manage-permissions-page)**: Enables you to monitor, add, modify, or delete access permissions for specific people or groups (distribution groups or security groups).

|<img src='/Assests/Security/Media/OneLakeDirectAccess.png' width='600' height='400'>|
| ----------- |

* **[Shared report links](https://learn.microsoft.com/power-bi/collaborate-share/service-share-dashboards)**: Shows you links that were generated for sharing reports. Such links sometimes also give access to your semantic model. On this tab you can review them and remove them if necessary.

|<img src='/Assests/Security/Media/Sharereports.png' width='380' height='100'>|
| ----------- |

> :bulb: **Tip:** Leverage the [Manage semantic model in PowerBI](https://learn.microsoft.com/training/modules/manage-datasets-power-bi/?source=recommendations) module to gain more knowledge.

## Data Warehouse

After identifying the Warehouse you would like to share with another user in your Fabric workspace, select the quick action in the row to Share a Warehouse. Select the warehouse from your workspace, select the permissions to assign, and then finally Grant the permissions to another user.

|<img src='/Assests/Security/Media/ShareWarehouse.gif' width='900' height='400'>|
| ----------- |

You can share your Warehouse from the OneLake data hub or Warehouse item by choosing Share from quick action, as highlighted in the following image.

|<img src='/Assests/Security/Media/OneLakeShareWarehouse.png' width='800' height='350'>|
| ----------- |

* If no additional permissions are selected - The shared recipient by default receives "Read" permission, which only allows the recipient to connect to the SQL analytics endpoint, the equivalent of CONNECT permissions in SQL Server. The shared recipient will not be able to query any table or view or execute any function or stored procedure unless they are provided access to objects within the Warehouse using T-SQL GRANT statement.

* If "Read all data using SQL" is selected ("ReadData" permissions)- The shared recipient can read all the database objects within the Warehouse. ReadData is the equivalent of db_datareader role in SQL Server. If you want to further restrict and provide granular access to some objects within the Warehouse, you can do this using T-SQL GRANT/REVOKE/DENY statements.
* In the SQL analytics endpoint of the Lakehouse, "Read all SQL Endpoint data" is equivalent to "Read all data using SQL".
* If "Read all data using Apache Spark" is selected ("ReadAll" permissions)- The shared recipient has read access to the underlying parquet files in OneLake, which can be consumed using Spark. ReadAll should be provided only if the shared recipient wants complete access to your warehouse's files using the Spark engine.
* If "Build reports on the default dataset" checkbox is selected ("Build" permissions)- The shared recipient can build reports on top of the default semantic model that is connected to your Warehouse.The Build checkbox is selected by default, but can be unchecked.

> :memo: **Note:** You can refer [this](https://learn.microsoft.com/fabric/data-warehouse/share-warehouse-manage-permissions#share-a-warehouse) page for more context.

## Lakehouse

When you share a lakehouse, you grant other users or groups access to a lakehouse without giving access to the workspace and the rest of its items.Sharing a lakehouse also grants access to the SQL endpoint and the associated default semantic model. Select the Lakehouse from your workspace, select the permissions to assign, and then finally Grant the permissions to another user.

|<img src='/Assests/Security/Media/ShareLakehouse.gif' width='650' height='300'>|
| ----------- |

By default, sharing a lakehouse grants users read permission to the lakehouse, the associated SQL endpoint, and the default semantic model. In addition to these default permissions, you can grant:

* ReadData permission on SQL endpoint to access data without SQL policy.
* ReadAll permission on the lakehouse to access all data using Apache Spark.
* Build permission on the default semantic model to allow building Power BI reports on top of the semantic model.

## Data Factory

To create and manage child resources for Data Factory - including datasets, linked services, pipelines, triggers, and integration runtimes you must belong to the **Data Factory Contributor role at the Resource Group level** or above. Membership in this role does not let the user create other resources.

Permissions on Azure Repos and GitHub are independent of Data Factory permissions. As a result, a user with repo permissions who is only a member of the Reader role can edit Data Factory child resources and commit changes to the repo, but can't publish these changes.

