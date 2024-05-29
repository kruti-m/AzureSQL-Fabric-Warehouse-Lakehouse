# In this article we will cover:

* [Access Management](#access-management)
  * [Authentication](#authentication)
  * [Authorization](#authorization)
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
|4| The metadata platform, which resides in your tenant's [home region](../admin/find-fabric-home-region.md), stores your tenant's metadata, such as workspaces and access controls. This platform ensures that the user is authorized to access the relevant workspaces and Fabric items. |
|5| The back-end capacity platform performs compute operations and stores your data. It's located in the [capacity region](../admin/service-admin-premium-multi-geo.md). When a workspace is assigned to Fabric capacity, all data that resides in the workspace, including the data lake [OneLake](../onelake/onelake-overview.md), is stored and processed in the capacity region. |

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

## Guest user sharing 

Sharing items with guest users in Fabric is similar to sharing items with guest users in Power BI, except that in Fabric, you can only share items by sharing the workspace.

|<img src='/Assests/Security/Media/GuestUser.png' width='700' height='380'>|
|-------|

> :bulb: **Tip:** More on granular settings(item,workspace,Power BI, OneLake) in the next modules.