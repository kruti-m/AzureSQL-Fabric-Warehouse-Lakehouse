# In this article we will cover:

* [Access Management](#access-management)
  * [Encryption](#encryption)
  * [Labelling](#labelling)
  * [Granular permissions](#granular-permissions)
  * [Customer Lockbox](#customer-lockbox)

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

