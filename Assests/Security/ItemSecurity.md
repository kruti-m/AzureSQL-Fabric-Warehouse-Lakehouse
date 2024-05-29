# In this article we will cover:

* [Item Security](#item-security)
  * [Semantic Model](#semantic-model)
  * [Authorization](#authorization)
  * [Guest user sharing](#guest-user-sharing)

# Item Security

In workspaces, data appears in the form of Fabric Items, and users can't view or use data in the Items unless you give them access to workspace. Workspace roles define access permissions for workspaces. Although items are stored in one workspace, they can be shared with other users across Fabric. When you share Fabric items, you can decide which permissions to grant the user you're sharing the item with. Certain items such as Power BI reports, allow even more granular control of data. Reports can be set up so that depending on their permissions, users who view them only see a portion of the data they hold.

|<img src='/Assests/Security/Media/ItemSecurity.PNG' width='1000' height='550'>|
| ----------- | 

 Item permissions are confined to a specific item and don't apply to other items. Use item permissions to control who can view, modify, and manage individual items in a workspace. You can use item permissions to give a user access to a single item in a workspace that they don't have access to. When you're sharing the item with a user or group, you can configure item permissions. Sharing an item grants the user the read permission for that item by default. Read permissions allow users to see the metadata for that item and view any reports associated with it. However, read permissions don't allow users to access underlying data in SQL or OneLake. Different Fabric items have different permissions.

## Semantic model

In Power BI, semantic model creators can control who has access to their data by using the [Build permission](https://learn.microsoft.com/power-bi/connect-data/service-datasets-build-permissions). The semantic model manage permissions page enables you to monitor and manage access to your semantic model. It has two tabs that help you control access to your semantic model:

* **[Direct access](https://learn.microsoft.com/power-bi/connect-data/service-datasets-manage-access-permissions#open-the-semantic-model-manage-permissions-page)**: Enables you to monitor, add, modify, or delete access permissions for specific people or groups (distribution groups or security groups).

|<img src='/Assests/Security/Media/OneLakeDirectAccess.png' width='600' height='400'>|
| ----------- |

* **[Shared report links](https://learn.microsoft.com/power-bi/collaborate-share/service-share-dashboards)**: Shows you links that were generated for sharing reports. Such links sometimes also give access to your semantic model. On this tab you can review them and remove them if necessary.

|<img src='/Assests/Security/Media/Sharereports.png' width='400' height='150'>|
| ----------- |


• Data Warehouse
• Data Factory
• Lakehouse
• Data science
• Real-Time Analytics
> :warning: **Warning:** Fabric doesn't support other authentication methods such as 

> :bulb: **Tip:** More on granular settings(item,workspace,Power BI, OneLake) in the next modules.