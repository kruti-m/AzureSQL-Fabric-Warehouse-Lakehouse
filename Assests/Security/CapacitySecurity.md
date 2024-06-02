# In this article we will cover:

* [Capacity Security](#capacity-security)
  * [Tenant Concept](#tenant-concept)
  * [Capacity Licensing and Feature](#capacity-license)
  * [Access Management](#access-management)
  * [Capacity Settings](#capacity-settings)

# Capacity Security

Capacities are the compute resources used by all Fabric workloads. Based on organizational requirements, capacities can be used as isolation boundaries for compute, chargebacks etc.

|<img src='/Assests/Security/Media/CapacitySecurity.PNG' width='1000' height='550'>|
| ----------- | 

## Tenant Concept

**A Microsoft Fabric capacity resides on a tenant**.Each capacity that sits under a specific tenant is a distinct pool of resources allocated to Microsoft Fabric. The size of the capacity determines the amount of computation power available. Workspaces reside within capacities and are used as containers for Microsoft Fabric items. 

|<img src='/Assests/Security/Media/TenatArchitecture.png' width='750' height='470'>|<img src='/Assests/Security/Media/Tenant.png' width='750' height='470'>|
| -------- | -------- |

### Tenant Settings

[Tenant settings](https://learn.microsoft.com/fabric/admin/tenant-settings-index) enable fine-grained control over the features that are made available to your organization. If you have concerns around sensitive data, some of our features might not be right for your organization, or you might only want a particular feature to be available to a specific group.

|<img src='/Assests/Security/Media/TenantSettings.png' width='700' height='400'>|
| -------- |

Tenant, domain, and workspace admins each have settings within their scope that they can configure to control who has access to certain functionalities at different levels. Some tenant-level settings can be delegated to domain and capacity admins. The important ones to consider are :</br>
[Create workspaces](https://learn.microsoft.com/fabric/admin/portal-workspace#create-workspaces-new-workspace-experience): So that users can create workspaces.</br>
[Users can create Fabric items](https://learn.microsoft.com/fabric/admin/fabric-switch) : Users can use production-ready features to create Fabric items. Turning off this setting doesn't impact users’ ability to create Power BI items.</br> [Block users from reassigning personal workspaces (My Workspace)](https://learn.microsoft.com/fabric/admin/portal-workspace#block-users-from-reassigning-personal-workspaces-my-workspace): Turn on this setting to prevent users from reassigning their personal workspaces (My Workspace) from Premium capacities to shared capacities. </br>[Service principals can use Fabric APIs](https://learn.microsoft.com/power-bi/developer/embedded/embed-service-principal)Web apps registered in Microsoft Entra ID can use service principals, rather than user credentials, to authenticate to Fabric APIs.</br>[Create and use Gen1 dataflows](https://learn.microsoft.com/power-bi/transform-model/dataflows/dataflows-introduction-self-service):Users in the organization can create and use Gen1 dataflows. </br>[Block Public Internet Access](https://learn.microsoft.com/power-bi/enterprise/service-security-private-links): For extra security, block access to your Fabric tenant via the public internet. This means people who don't have access to the Private Link won't be able to get in. Keep in mind, turning this on could take 10 to 20 minutes to take effect.</br>[Create Datamarts (preview)](https://learn.microsoft.com/power-bi/transform-model/datamarts/datamarts-administration) : Users in the organization can create Datamarts.</br>[Users can synchronize workspace items with their Git repositories (preview)](https://learn.microsoft.com/fabric/cicd/git-integration/intro-to-git-integration):Users can import and export workspace items to Git repositories for collaboration and version control.

> :warning: **Warning:** If not properly set these settings can block users from creating items in workspaces and consuming Fabric capacity.

## Capacity Licensing and Feature

Capacity licenses are split into Stock Keeping Units (SKUs).To access the Fabric SaaS platform, you need a license. Fabric has two type of licenses:

1. **Capacity license** - An organizational license that provides a pool of resources for Fabric operations. Capacity licenses are divided into stock keeping units (SKUs). Each SKU provides a different number of capacity units (CUs) which are used to calculate the capacity's compute power.
2. **Per user license** - Per user licenses allow users to work in Fabric.

### Capacity license

Each SKU provides a set of Fabric resources for your organization. Your organization can have as many capacity licenses as needed.

> :memo: **Note:** Power BI Premium P SKUs support Microsoft Fabric. **A and EM SKUs only support Power BI items.**

The workspace license mode dictates what kind of capacity the workspace can be hosted in and as a result the capabilities available.

| Workspace license mode | User capabilities |  Supported experiences |
|--|--|--|
| Pro | Use basic Power BI features and collaborate on reports, dashboards, and scorecards. | Power BI |
| [Premium per-user](/power-bi/enterprise/service-premium-per-user-faq) (PPU) | Collaborate using most of the [Power BI Premium features](/power-bi/enterprise/service-premium-features), including dataflows, and datamarts. | Power BI |
| [Premium per capacity](/power-bi/enterprise/service-premium-what-is) (P SKUs)   | Create Power BI content. Share, collaborate on, and distribute Power BI content. |  All Fabric experiences |
| [Embedded](/power-bi/developer/embedded/embedded-capacity#power-bi-embedded) (A SKUs) | Embed content in an Azure capacity. | Power BI |
| Fabric capacity (F SKUs) | Create, share, collaborate on, and distribute Fabric content. | All Fabric experiences |
| Trial | Try Fabric features and experiences for 60 days. |  All Fabric experiences |

To share content and collaborate in Microsoft Fabric, your organization needs to have an [F or P capacity license](https://learn.microsoft.com/fabric/enterprise/licenses#capacity-license), and at least one per-user license.

### Per-user License

Per-user licenses allow users to work in Microsoft Fabric. There are three types of individual licenses:

* **Free** - A free license allows you to create and share Fabric content other than Power BI items in Microsoft Fabric, if you have access to a Fabric capacity (either trial or paid).
* **Pro** - A Pro license lets you share Power BI content with other users. Every organization needs at least one user with a Pro or a Premium Per User (PPU) license, if they intend to use Power BI within Fabric. SKUs smaller than F64 require a Power BI Pro or Premium Per User license for each user consuming Power BI content.
* **Premium per-user (PPU)** - PPU licenses allow organizations to access Power BI Premium features by licensing every user with a PPU license instead of purchasing a Power BI Premium capacity. PPU can be more cost effective when Power BI Premium features are needed for fewer than 250 users. 

| Capabilities | Free | Pro | PPU |
|--|--|--|--|
| Access Microsoft Fabric web application | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Create Fabric capacity workspaces |:heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Create Power BI Premium workspaces | | :heavy_check_mark: | :heavy_check_mark: |
| Create Pro workspaces | | :heavy_check_mark: |:heavy_check_mark: |
| Create, update, delete or manage Power BI items in workspaces other than their "My Workspace" |  | :heavy_check_mark: |:heavy_check_mark: |
| Create PPU workspaces | |  |:heavy_check_mark: |
| Create non-Power BI Fabric items in Fabric / Trial capacity workspaces | :heavy_check_mark: | :heavy_check_mark: |:heavy_check_mark: |
| Create non-Power BI Fabric items in Power BI Premium capacity workspaces |  | :heavy_check_mark: |:heavy_check_mark: |
| Share non-Power BI Fabric items | :heavy_check_mark: | :heavy_check_mark: | |
| View Power BI items in Pro workspaces or Fabric Capacity workspaces (where the Fabric Capacity SKU is less than a F64) |  | :heavy_check_mark: |:heavy_check_mark: |
| Users signing in with their own account can view Power BI items in Power BI Premium Per Capacity or Fabric Capacity workspaces (where the Fabric capacity SKU is greater than or equal to a F64) | :heavy_check_mark: | :heavy_check_mark: |:heavy_check_mark: |
| Anyone can view Power BI items in Power BI Premium Per Capacity or Fabric Capacity workspaces when they're embedded using the [embed for your customers](/power-bi/developer/embedded/embedded-analytics-power-bi#embed-for-your-customers) solution | :heavy_check_mark: | :heavy_check_mark: |:heavy_check_mark: |

You can map a Capacity to Workspace or multiple Workspaces. You may choose to spin up multiple Capacities as well.Split up capacities based on the requirements of the environment, for example, development/test/acceptance/production (DTAP). This makes for better workload isolation and chargeback.

**But at any given point in time one workspace can be mapped to only one specific capacity. Its preferred to keep Prod and Non-Prod Capacities separate.**

|<img src='/Assests/Security/Media/CapacityMapping.PNG' width='500' height='350'>|
| --------- |

## Access Management

To avoid becoming a bottleneck for every single setting in your organization, a Fabric admin can delegate many of the controls to capacity, workspace, and domain admins. Delegating settings allows your organization to have several admins with different levels of admin rights in multiple logical locations within your organization. The team admin can control settings and permissions relevant for the team, at the capacity, workspace, or domain level, depending on the way your organization is set up.

Check [this](https://learn.microsoft.com/fabric/get-started/give-access-workspaces#give-access-to-your-workspace) link how to give access.

## Capacity Settings

To view the settings of a specific capacity, follow these steps:</br> 1. Go to the capacity settings page.</br> 2. Select the capacity type your capacity belongs to. From the capacity list, select the capacity you want to view.</br>

|<img src='/Assests/Security/Media/CapacitySettings1.PNG' width='600' height='220'>|
| -------- |

|<img src='/Assests/Security/Media/CapacitySettings2.PNG' width='800' height='400'>|
| -------- |

There are several settings which can be controlled at the capacity level:

> :memo: **Note:** Trail capacities only have some of the settings listed in the table.

| Details setting name                 | Description |
|--------------------------------------|-------------|
| Disaster Recovery                    | Enable [disaster recovery](/azure/reliability/reliability-fabric#set-up-disaster-recovery) for the capacity |
| Capacity usage report                | The usage report is replaced with the [capacity metrics app](../enterprise/metrics-app.md) |
| Notifications                        | Enable [notification](service-admin-premium-capacity-notifications.md) for your capacity |
| Contributor permissions              | Set up the ability to add workspaces to the capacity. Select one of these two options:<li>The entire organization</li><li>Specific users or security groups</li> |
| Admin permissions                    | Give specific users or security groups the ability to do the following:<li>Change capacity settings</li><li>Add contributors to the capacity</li><li>Add or remove workspaces from the capacity</li> |
| Power BI workloads                   | Configure [Power BI workloads](/power-bi/enterprise/service-admin-premium-workloads) for:<li>[Semantic models](/power-bi/enterprise/service-admin-premium-workloads#semantic-models)</li><li>[Paginated reports](/power-bi/enterprise/service-admin-premium-workloads#paginated-reports)</li><li>[AI](/power-bi/enterprise/service-admin-premium-workloads#ai-preview)</li> |
| Preferred capacity for My workspace  | Designate the capacity as the [default capacity for My workspaces](/power-bi/enterprise/service-admin-premium-manage#designate-a-default-capacity-for-my-workspaces)         |
| Data Engineering/Science Settings    | Allow workspace admins to set the size of their spark [pools](../data-engineering/workspace-admin-settings.md#pool) |
| Workspaces assigned to this capacity | Add or remove workspaces assigned to the capacity |

## Consumption

Consumption in Fabric is measured using capacity units (CUs). Using the [Capacity Metrics app](https://learn.microsoft.com/fabric/enterprise/metrics-app) admins can view consumption in their organization. This report enables you to make informed decisions regarding the use of your organizational resources. You can then take action by [scaling](https://learn.microsoft.com/fabric/enterprise/scale-capacity) a capacity up or down, [pausing](https://learn.microsoft.com/fabric/enterprise/pause-resume) a capacity operation, optimizing query efficiency, or buying another capacity if needed.

## DR

For effective disaster recovery planning, it's critical that you understand the relationship between your home region and capacity locations. Understanding home region and capacity locations helps you make strategic selections of capacity regions, as well as the corresponding replication and recovery processes

Choosing a different region for your capacity doesn't entirely relocate all of your data to that region. Some data elements still remain stored in the home region. To see which data remains in the home region and which data is stored in the Multi-Geo enabled region, see Configure Multi-Geo support for Fabric Premium.
