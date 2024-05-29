# In this article we will cover:

* [Item Security](#item-security)
  * [Authentication](#authentication)
  * [Authorization](#authorization)
  * [Guest user sharing](#guest-user-sharing)

# Item Security

In workspaces, data appears in the form of Fabric Items, and users can't view or use data in the Items unless you give them access to workspace. Workspace roles define access permissions for workspaces. Although items are stored in one workspace, they can be shared with other users across Fabric. When you share Fabric items, you can decide which permissions to grant the user you're sharing the item with. Certain items such as Power BI reports, allow even more granular control of data. Reports can be set up so that depending on their permissions, users who view them only see a portion of the data they hold.

|<img src='/Assests/Security/Media/ItemSecurity.PNG' width='1000' height='550'>|
| ----------- | 


> :warning: **Warning:** Fabric doesn't support other authentication methods such as 

> :bulb: **Tip:** More on granular settings(item,workspace,Power BI, OneLake) in the next modules.