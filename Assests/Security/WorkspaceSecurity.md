# In this article we will cover:

* [Workspace Scurity](#workspace-security)
  * [Workspace Roles](#workspace-roles)
  * [Access Management](#access-management)
  * [Workspace Settings](#workspace-settings)
  * [Workspace Retention](#workspace-retention)
  * [Govern "My Workspace"](#govern-my-workspace)
  * [Lineage"](#lineage)
  * [Workspace States](#workspace-states)
  * [Quick Tips](#tips-when-working-with-workspaces)

# Workspace Security

Workspace roles are used to control access to workspaces and the content within them. All Fabric items (lakehouses, notebooks, pipelines, etc.) are stored in OneLake and accessed via Fabric workspaces. Microsoft Fabric workspaces sit on top of OneLake and divide the data lake into separate containers that can be secured independently. Workspace roles in Microsoft Fabric extend the Power BI workspace roles by associating new Microsoft Fabric capabilities such as data integration and data exploration with existing workspace roles.

|<img src='/Assests/Security/Media/WorkspaceSecurity.PNG' width='1000' height='550'>|
| ----------- | 

To use the admin monitoring workspace, you need to be an admin with one of these roles.
* Microsoft 365 Global administrator.
* Fabric Administrator.

You can either assign roles to individuals or to security groups, Microsoft 365 groups, and distribution lists. Workspace roles are confined to a specific workspace and don't apply to other workspaces, the capacity the workspace is in, or the tenant. There are four Workspace roles and they apply to all items within the workspace.Users that don't have any of these roles, can't access the workspace. The roles are:
* Viewer - Can view all content in the workspace, but can't modify it.
* Contributor - Can view and modify all content in the workspace.
* Member - Can view, modify, and share all content in the workspace.
* Admin - Can view, modify, share, and manage all content in the workspace, including managing permissions.
This is a small sub-set which can be easily remembered when mapping permissions.

## Workspace Roles

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

<sup>1</sup> Contributors can [update the app that's associated with the workspace](https://learn.microsoft.com/power-bi/collaborate-share/service-create-the-new-workspaces#allow-contributors-to-update-the-app), if the workspace Admin delegates this permission to them. However, they can't publish a new app or change who has permission to edit it.

<sup>2</sup> Contributors and Viewers can also share items in a workspace or an app, including semantic models, if the app creator selected **Allow users to share the semantic models in this app**. See the [Create and manage multiple audiences](https://learn.microsoft.com/power-bi/collaborate-share/service-create-distribute-apps#create-and-manage-multiple-audiences) section of "Publish an app in Power BI."

<sup>3</sup> To copy a report to another workspace, and to create a report in another workspace based on a semantic model in the current workspace, you need [Build permission for the semantic model](https://learn.microsoft.com/en-us/power-bi/connect-data/service-datasets-build-permissions). You also need at least the Contributor role on the source and destination workspaces. For semantic models in the original workspace, if you have at least the Contributor role, you automatically have Build permission through your workspace role. For details, see [Copy reports from other workspaces](https://learn.microsoft.com/en-us/power-bi/connect-data/service-datasets-copy-reports).

<sup>4</sup> Keep in mind that you also need permissions on the gateway. Those permissions are managed elsewhere, independent of workspace roles and permissions. For details, see [Manage an on-premises gateway](https://learn.microsoft.com/data-integration/gateway/service-gateway-manage).

<sup>5</sup> If the items are in a workspace in a Premium capacity, you can view and interact with items in the Power BI service even if you don't have a Power BI Pro license.

<sup>6</sup> To subscribe yourself or others requires a paid (Power BI Pro or Premium Per User (PPU)() license. When you subscribe others, those recipients also need a paid subscription, unless the items are in a workspace in a Premium capacity. B2B guest users can't subscribe others, only themselves.

<sup>7</sup> If your admin has enabled this feature, see [Manage featured content](/https://learn.microsoft.com/fabric/admin/service-admin-portal-featured-content).

<sup>8</sup> If your admin has enabled this feature, see [Users can try Microsoft Fabric paid features](https://learn.microsoft.com/fabric/admin/service-admin-portal-help-support#users-can-try-microsoft-fabric-paid-features).

<sup>9</sup> If you want your users with the Viewer role to Analyze in Excel or export underlying data from the datasets in the workspace, you need to also give them Build permission on the appropriate datasets.

|<img src='/Assests/Security/Media/ImplicitlyRoles.png' width='600' height='300'>|
| ----------- | 

## Access Management

Workspaces can contain a maximum of 1,000 semantic models, or 1,000 reports per semantic model.A user or a service principal can be a member of up to 1,000 workspaces. Hence access needs to be provided carefully. 

1. Because you have the Admin role in the workspace, on the workspace content list page, you see Access.
2. Add security groups, distribution lists, Microsoft 365 groups, or individuals to these workspaces as admins, members, contributors, or viewers.

|<img src='/Assests/Security/Media/WorkSpaceAccess.png' width='435' height='450'>|
| ----------- | 

3. Select Add > Close.

## Workspace Settings

To open the workspace settings, you can select the workspace in the nav pane, then select More options (...) > Workspace settings next to the workspace name.

|<img src='/Assests/Security/Media/WorkspaceSetting.png' width='500' height='250'>|
| ----------- | 

You can also open it from the workspace page.

|<img src='/Assests/Security/Media/WorkspaceSetting2.png' width='450' height='150'>|
| ----------- | 

## Workspace Retention

By default, when a workspace is deleted, it isn't permanently and irrevocably deleted immediately. Instead, it enters a retention period during which it's possible to restore it. At the end of the retention period, it's removed permanently, and it will no longer be possible to recover it or its contents. The retention period for personal workspaces (My workspaces) is 30 days.

The retention period for collaborative workspaces is configurable. The default retention period is seven days. However, Fabric administrators should change the length of the retention period by turning on the Define workspace retention period setting in the admin portal and specifying the desired retention period (from 7 to 90 days).

|<img src='/Assests/Security/Media/WorkspaceRetention.png' width='450' height='350'>|
| ----------- | 

## Govern My Workspace

For development purposes, a best practice is to have isolated workspaces per developer, so that they can work on their own without interfering with the shared workspace.
Every Fabric user has a personal workspace called My workspace where they can work with their own content. While generally only My workspace owners have access to their My workspaces, you can explicitly [prevent users from moving My workspaces](https://learn.microsoft.com/fabric/admin/portal-workspaces#prevent-my-workspace-owners-from-reassigning-their-my-workspaces-to-a-different-capacity) to a different capacity that might reside in noncompliant regions & designate a default capacity for My Workspaces. This can be done through Admin portal -> select Capacity settings -> Fabric Capacity -> Preferred capacity for My workspace

To avoid becoming a bottleneck for every single setting in your organization, you can [delegate many of the controls](https://learn.microsoft.com/fabric/admin/admin-overview#delegate-admin-rights) to Capacity, Workspace, and Domain administrators.

## Lineage

Data lineage is broadly understood as the lifecycle that spans the data’s origin, and where it moves over time across the data estate. Microsoft Purview works with Microsoft Fabric so users can discover and manage Microsoft Fabric items. We will cover the complete integration in the Governance Module but from security perspective its good to know how you can quickly check lineage.

> :warning: **Note:**Lineage in Fabric is in preview, and not all connections between items are fully supported yet. It is possible that the lineage between some items will be incorrectly shown.

Lineage is accessible from multiple locations. Typically, you can get to it from the workspace toolbar.

|<img src='/Assests/Security/Media/WorspaceLineage.png' width='270' height='150'>|
| ---------- |

Other methods are from an item's option menu (for instance, in the OneLake data hub) & from the menu items at the top of the item's details page.

|<img src='/Assests/Security/Media/OneLakeLineage.png' width='450' height='250'>|<img src='/Assests/Security/Media/ItemLineage.png' width='450' height='320'>|
| ------------- | ---------- |

When you open lineage view , you'll see the connections between all the items in the workspace the item is located in.

|<img src='/Assests/Security/Media/LineageView.png' width='900' height='500'>|
| ---------- |

## Workspace States

The possible workspace states are described below.

|State  |Description  |
|---------|---------|
| **Active** | A normal workspace. It doesn't indicate anything about usage or what's inside, only that the workspace itself is "normal". |
| **Orphaned** | A workspace with no admin user. You need to assign an admin. |
| **Deleted** | A deleted workspace. When a workspace is deleted, it enters a retention period. During the retention period, a Microsoft Fabric administrator can restore the workspace. See [Workspace retention](#workspace-retention) for detail. When the retention period ends, the workspace enters the *Removing* state.|
| **Removing** | At the end of a deleted workspace's retention period, it moves into the *Removing* state. During this state, the workspace is permanently removed. Permanently removing a workspace takes a short while, and depends on the service and folder content. |
| **Not found** | If the customer's API request includes a workspace ID for a workspace that doesn't belong to the customer's tenant, "Not found" is returned as the status for that ID. |

### Tips when working with Workspaces

Its good to know how to [restore a deleted workspace](https://learn.microsoft.com/fabric/admin/portal-workspaces#restore-a-deleted-collaborative-workspace) & [permanently delete a deleted collaborative workspace](https://learn.microsoft.com/fabric/admin/portal-workspaces#permanently-delete-a-deleted-collaborative-workspace-during-the-retention-period) from a security view point.

Here are some useful tips about working with workspaces.

* **Set up a task flow** for the workspace to organize your data project and to help others understand and work on your project. Read more about [task flows](https://learn.microsoft.com/fabric/get-started/task-flow-overview).
* **Pin workspaces** to the top of the workspace flyout list to quickly access your favorite workspaces. Read more about [pin workspaces](https://learn.microsoft.com/fabric/get-started/create-workspaces#pin-workspaces).
* **Use granular workspace roles** for flexible permissions management in the workspaces: Admin, Member, Contributor, and Viewer. 
* **Create folders** in the workspace: Organize and manage artifacts in the workspace. 
* **Manage a workspace in Git**: Git integration in Microsoft Fabric enables Pro developers to integrate their development processes, tools, and best practices straight into the Fabric platform. Learn how to manage a [workspace with Git](https://learn.microsoft.com/fabric/cicd/git-integration/git-get-started?tabs=commit-to-git). [Best Practices for implementing CI/CD](https://learn.microsoft.com/fabric/cicd/best-practices-cicd)
* **Moving workspaces**: Workspaces and the data they contain reside on capacities, and can be moved around by assigning them to different capacities. In Microsoft Fabric, such movement currently has the following restrictions.

1. Non Power BI Fabric items can't move from Premium to shared capacity.
2. Non Power BI Fabric items can't move between regions.

* **Contact list**: Specify who receives notification about workspace activity. Read more about workspace contact lists in this article.

