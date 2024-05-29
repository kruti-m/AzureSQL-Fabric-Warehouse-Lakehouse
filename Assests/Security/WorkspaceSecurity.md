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

To use the admin monitoring workspace, you need to be an admin with one of these roles.

* Microsoft 365 Global administrator
* Fabric administrator 

You can either assign roles to individuals or to security groups, Microsoft 365 groups, and distribution lists. Workspace roles are confined to a specific workspace and don't apply to other workspaces, the capacity the workspace is in, or the tenant. There are four Workspace roles and they apply to all items within the workspace.Users that don't have any of these roles, can't access the workspace. The roles are:
* Viewer - Can view all content in the workspace, but can't modify it.
* Contributor - Can view and modify all content in the workspace.
* Member - Can view, modify, and share all content in the workspace.
* Admin - Can view, modify, share, and manage all content in the workspace, including managing permissions.
This is a small sub-set which can be easily remembered when mapping permissions

## Roles for Workspace

Here is the extensive list of each roles permission
|Capability   | Admin  | Member  | Contributor  | Viewer |
|---|---|---|---|---|
| Update and delete the workspace.  | :heavy_check_mark: |   |   |   |
| Add or remove any user in a workspace role.  |  :heavy_check_mark: |   |   |   |
| Allow Contributors to update the app for the workspace.  |  :heavy_check_mark: |   |   |   |
| Add members or others with lower permissions.  |  :heavy_check_mark: | :heavy_check_mark:  |   |   |
| Publish, unpublish, and change permissions for an app. |  :heavy_check_mark: | :heavy_check_mark:  |   |   |
| Update an app. |  :heavy_check_mark: | :heavy_check_mark:  |  If allowed <sup>1</sup>  |   |
| Share items in apps, including semantic models.<sup>2</sup> |  :heavy_check_mark: | :heavy_check_mark:  |   |   |
| Allow others to reshare items.<sup>2</sup> |  :heavy_check_mark: | :heavy_check_mark:  |   |   |
| Feature apps on colleagues' home. <sup>7</sup> |  :heavy_check_mark: | :heavy_check_mark:  |   |   |
| Manage semantic model permissions.<sup>3</sup> | :heavy_check_mark: | :heavy_check_mark: |  |  |
| Feature dashboards and reports on colleagues' home.<sup>6</sup> |  :heavy_check_mark: | :heavy_check_mark:  | :heavy_check_mark: |   |
| Publish, Create, edit, and delete content, such as reports, in the workspace.  |  :heavy_check_mark: | :heavy_check_mark:  | :heavy_check_mark:  |   |
| Create a report in another workspace based on a semantic model in this workspace.<sup>3</sup> |  :heavy_check_mark: | :heavy_check_mark:  | :heavy_check_mark:  |   |
| Copy a report.<sup>3</sup> | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |  |
| Create metrics that's based on a semantic model in the workspace.<sup>3</sup> | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |  |
| Schedule data refreshes via the on-premises gateway.<sup>4</sup> | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |  |
| Modify gateway connection settings.<sup>4</sup> | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |  |
| View and interact with an item.<sup>5</sup> |  :heavy_check_mark: | :heavy_check_mark:  | :heavy_check_mark:  | :heavy_check_mark:  |
| Read data that's stored in workspace dataflows. | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Create subscriptions to reports <sup>6</sup>| :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Subscribe others to reports <sup>6</sup>| :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |  |
| Analyze in Excel <sup>9</sup> | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |  |
| Manage subscriptions created by others. | :heavy_check_mark: |   |   |  |
| Can receive subscriptions created by others <sup>6</sup>|  | :heavy_check_mark:  | :heavy_check_mark:   | :heavy_check_mark:  |

<sup>1</sup> Contributors can [update the app that's associated with the workspace](../collaborate-share/service-create-the-new-workspaces.md#allow-contributors-to-update-the-app), if the workspace Admin delegates this permission to them. However, they can't publish a new app or change who has permission to edit it.

<sup>2</sup> Contributors and Viewers can also share items in a workspace or an app, including semantic models, if the app creator selected **Allow users to share the semantic models in this app**. See the [Create and manage multiple audiences](../collaborate-share/service-create-distribute-apps.md#create-and-manage-multiple-audiences) section of "Publish an app in Power BI."

<sup>3</sup> To copy a report to another workspace, and to create a report in another workspace based on a semantic model in the current workspace, you need [Build permission for the semantic model](../connect-data/service-datasets-build-permissions.md). You also need at least the Contributor role on the source and destination workspaces. For semantic models in the original workspace, if you have at least the Contributor role, you automatically have Build permission through your workspace role. For details, see [Copy reports from other workspaces](../connect-data/service-datasets-copy-reports.md).

<sup>4</sup> Keep in mind that you also need permissions on the gateway. Those permissions are managed elsewhere, independent of workspace roles and permissions. For details, see [Manage an on-premises gateway](/data-integration/gateway/service-gateway-manage).

<sup>5</sup> If the items are in a workspace in a Premium capacity, you can view and interact with items in the Power BI service even if you don't have a Power BI Pro license.

<sup>6</sup> To subscribe yourself or others requires a paid (Power BI Pro or Premium Per User (PPU)() license. When you subscribe others, those recipients also need a paid subscription, unless the items are in a workspace in a Premium capacity. B2B guest users can't subscribe others, only themselves.

<sup>7</sup> If your admin has enabled this feature, see [Manage featured content](/fabric/admin/service-admin-portal-featured-content).

<sup>8</sup> If your admin has enabled this feature, see [Users can try Microsoft Fabric paid features](/fabric/admin/service-admin-portal-help-support#users-can-try-microsoft-fabric-paid-features).

<sup>9</sup> If you want your users with the Viewer role to Analyze in Excel or export underlying data from the datasets in the workspace, you need to also give them Build permission on the appropriate datasets.

[Here](https://learn.microsoft.com/fabric/get-started/give-access-workspaces#give-access-to-your-workspace) is the link to refer how to give access to the workspace. After you add or remove workspace access for a user or a group, the permission change only takes effect the next time the user logs into Microsoft Fabric.

## Check existing Workspace settings
To open the workspace settings, you can select the workspace in the nav pane, then select More options (...) > Workspace settings next to the workspace name.

|<img src='/Assests/Security/Media/WorkspaceSetting.png' width='500' height='250'>|
| ----------- | 

You can also open it from the workspace page.

|<img src='/Assests/Security/Media/WorkspaceSetting2.png' width='470' height='150'>|
| ----------- | 


### Tips when working with Workspaces