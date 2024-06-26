# In this article we will cover:

* [Access Management](#access-management)
  * [Authentication](#authentication)
  * [Authorization](#authorization)
  * [Workspace Identities](#workspace-identities)
  * [Guest user sharing](#guest-user-sharing)

# Access management

|<img src='/Assests/Security/Media/AccessLayer.PNG' width='1000' height='550'>|
| ----------- | 

## Authentication

Authentication is the process of proving the user is who they claim to be.Microsoft Fabric uses Microsoft Entra ID as their cloud-based identity provider. Microsoft Entra  ID helps users connect to these services quickly and easily from any device and any network. Every request to connect to Fabric is authenticated with Microsoft Entra ID. Here's what happens when a user signs in to Fabric.

|<img src='/Assests/Security/Media/UserSignIn.PNG' width='600' height='270'>|

| **Item** | **Description** |
| --- | --- |
|1| The user opens a browser (or a client application) and signs in to the [Fabric portal](https://app.fabric.microsoft.com/). |
|2| The user is immediately redirected to Microsoft Entra ID, and they're required to authenticate. Authentication verifies that it's the correct person signing in. |
|3| After authentication succeeds, the web front end receives the user's request and delivers the front-end (HTML and CSS) content from the nearest location. It also routes the request to the metadata platform and backend capacity platform. |
|4| The metadata platform, which resides in your tenant's [home region](https://learn.microsoft.com/fabric/admin/find-fabric-home-region), stores your tenant's metadata, such as workspaces and access controls. This platform ensures that the user is authorized to access the relevant workspaces and Fabric items. |
|5| The back-end capacity platform performs compute operations and stores your data. It's located in the [capacity region](https://learn.microsoft.com/fabric/admin/service-admin-premium-multi-geo). When a workspace is assigned to Fabric capacity, all data that resides in the workspace, including the data lake [OneLake](https://learn.microsoft.com/fabric/onelake/onelake-overview), is stored and processed in the capacity region. |

> :warning: **Warning:** Fabric doesn't support other authentication methods such as account keys or SQL authentication, which rely on usernames and password. If you are using on-premises data sources, A stored credential is used to connect from the gateway. Regardless of the user, the gateway uses the stored credential to connect.

## Authorization

Authorization is the process of verifying what they have access to.Authorization is also handled by Microsoft Entra. Fabric's default security settings include:

* Microsoft Entra ID which is used to authenticate every request.
* Upon successful authentication, requests are routed to the appropriate backend service through secure Microsoft managed endpoints.
* Internal traffic between experiences in Fabric is routed over the Microsoft backbone.
* Traffic between clients and Fabric is encrypted using at least the Transport Layer Security (TLS) 1.2 protocol.

Fabric authorizes users through a granular approach. Security can be set for an entire workspace, for individual items, or through granular permissions in each Fabric engine.

|<img src='/Assests/Security/Media/GranularPermissions.png' width='560' height='450'>|

Some compute engines in Fabric have their own security models.Granular engine permissions allow fine-grained access control such as table, column, and row-level security to be defined. Engine-specific granular data security:

* [Data warehousing Security](https://learn.microsoft.com/fabric/data-warehouse/security)
* [Data Factory - Set up you Lakehouse Connection](https://learn.microsoft.com/fabric/data-factory/connector-lakehouse-overview)
* [Real-Time Analytics Row-Level Security](https://learn.microsoft.com/azure/data-explorer/kusto/management/row-level-security-policy)

## Workspace Identities

A [Fabric workspace identity](https://learn.microsoft.com/fabric/security/workspace-identity) is an automatically managed service principal that can be associated with a Fabric workspace. Workspace identities are supported in workspaces assigned to Fabric capacities (F64 or higher). If this workspace was migrated and is no longer assigned to an F64 (or higher) capacity, any items using workspace identities may no longer work.

Fabric workspaces with a workspace identity can securely read or write to firewall-enabled Azure Data Lake Storage Gen2 accounts through trusted workspace access for OneLake shortcuts.Fabric will use workspace identities to obtain Microsoft Entra tokens without the customer having to manage any credentials.A workspace identity is automatically assigned the **workspace contributor role** and has access to workspace items.

### How-To Create Workspace Identity

You navigate to the workspace and open the workspace settings -> Workspace identity tab -> Workspace identity button.

|<img src='/Assests/Security/Media/WorkspaceIdentity.gif' width='780' height='400'>|
| -------- |

When you create a workspace identity, Fabric creates a service principal in Microsoft Entra ID to represent the identity. An accompanying app registration is also created. Fabric automatically manages the credentials associated with workspace identities, thereby preventing credential leaks and downtime due to improper credential handling.

### Identity details

| Detail | Description |
|:-------|:-----|
| **Name** | Workspace identity name. The workspace identity name is the same as the workspace name.|
| **ID** | The workspace identity GUID. This is a unique identifier for the identity. |
| **Role** | The workspace role assigned to the identity. Workspace identities are automatically assigned the contributor role upon creation. |
| **State** | The state of the workspace. Possible values: *Active*, *Inactive*, *Deleting*, *Unusable*, *Failed*, *DeleteFailed* |

> :warning: Note When a workspace is deleted, the workspace identity is deleted as well. its workspace identity is deleted as well. If the workspace is restored after deletion, the workspace identity is not restored.When a workspace gets renamed, the workspace identity is also renamed to match the workspace name. However its Entra application and service principal remain the same.

Do review [considerations and limitations](https://learn.microsoft.com/fabric/security/workspace-identity#considerations-and-limitations) before implementation.

## Guest user sharing

Sharing items with guest users in Fabric is similar to sharing items with guest users in Power BI, except that in Fabric, you can only share items by sharing the workspace.

|<img src='/Assests/Security/Media/GuestUser.png' width='700' height='400'>|
|-------|

> :bulb: **Tip:** More on granular settings(item,workspace,Power BI, OneLake) in the next modules.