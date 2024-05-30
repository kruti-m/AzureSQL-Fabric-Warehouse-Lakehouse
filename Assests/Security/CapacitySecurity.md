# In this article we will cover:

* [Capacity Security](#capacity-security)
  * [Tenant Concept](#tenant-concept)
  * [Licensing and Feature]()

# Capacity Security

Capacities are the compute resources used by all Fabric workloads. Based on organizational requirements, capacities can be used as isolation boundaries for compute, chargebacks etc.

|<img src='/Assests/Security/Media/CapacitySecurity.PNG' width='1000' height='550'>|
| ----------- | 

## Tenant Concept

A Microsoft Fabric capacity resides on a tenant.Each capacity that sits under a specific tenant is a distinct pool of resources allocated to Microsoft Fabric. The size of the capacity determines the amount of computation power available. Workspaces reside within capacities and are used as containers for Microsoft Fabric items. 

|<img src='/Assests/Security/Media/Tenant.png' width='700' height='400'>|

## Licensing and Feature

Capacity licenses are split into Stock Keeping Units (SKUs).To access the Fabric SaaS platform, you need a license. Fabric has two type of licenses:

1. **Capacity license** - An organizational license that provides a pool of resources for Fabric operations. Capacity licenses are divided into stock keeping units (SKUs). Each SKU provides a different number of capacity units (CUs) which are used to calculate the capacity's compute power.
2. **Per user license** - Per user licenses allow users to work in Fabric.

### Capacity license:

Each SKU provides a set of Fabric resources for your organization. Your organization can have as many capacity licenses as needed. To share content and collaborate in Microsoft Fabric, your organization needs to have an [F or P capacity license](https://learn.microsoft.com/en-us/fabric/enterprise/licenses#capacity-license), and at least one per-user license. The workspace license mode dictates what kind of capacity the workspace can be hosted in and as a result the capabilities available.

| Feature                                                                                                  | F SKU         | P SKUs   |
|----------------------------------------------------------------------------------------------------------|:-------------:|:--------:|
| [Copilot](../get-started/copilot-fabric-overview.md)                                                     | F64 or higher | &#x2705; |
| [Workspace identity](../security/workspace-identity.md)                                                  | F64 or higher | &#x2705; |
| [Managed Private Endpoints](../security/security-managed-private-endpoints-overview.md)                  | F64 or higher | &#x274C; |
| [ARM APIs and Terraform](/azure/developer/terraform/overview-azapi-provider)                             | &#x2705;      | &#x274C; |
| [Trusted workspace access](../security/security-trusted-workspace-access.md)                             | &#x2705;      | &#x274C; |
| [Data exfiltration protection](/azure/synapse-analytics/security/workspace-data-exfiltration-protection) | &#x2705;      | &#x274C; |
| [Pause and resume your capacity](pause-resume.md)                                                        | &#x2705;      | &#x274C; |
| [On-demand resizing](scale-capacity.md)                                                                  | &#x2705;      | &#x274C; |
| [Power BI Autoscale](/power-bi/enterprise/service-premium-auto-scale)                                    | &#x274C;      | &#x2705; |
| [Bring your own key for Power BI](/power-bi/enterprise/service-encryption-byok)                          | &#x2705;      | &#x2705; |

| Workspace license mode | User capabilities |  Supported experiences |
|--|--|--|
| Pro | Use basic Power BI features and collaborate on reports, dashboards, and scorecards. | Power BI |
| [Premium per-user](/power-bi/enterprise/service-premium-per-user-faq) (PPU) | Collaborate using most of the [Power BI Premium features](/power-bi/enterprise/service-premium-features), including dataflows, and datamarts. | Power BI |
| [Premium per capacity](/power-bi/enterprise/service-premium-what-is) (P SKUs)   | Create Power BI content. Share, collaborate on, and distribute Power BI content. |  All Fabric experiences |
| [Embedded](/power-bi/developer/embedded/embedded-capacity#power-bi-embedded) (A SKUs) | Embed content in an Azure capacity. | Power BI |
| Fabric capacity (F SKUs) | Create, share, collaborate on, and distribute Fabric content. | All Fabric experiences |
| Trial | Try Fabric features and experiences for 60 days. |  All Fabric experiences |

Per-user License

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


## Access Related

To avoid becoming a bottleneck for every single setting in your organization, a Fabric admin can delegate many of the controls to capacity, workspace, and domain admins.Delegating settings allows your organization to have several admins with different levels of admin rights in multiple logical locations within your organization. The team admin can control settings and permissions relevant for the team, at the capacity, workspace, or domain level, depending on the way your organization is set up.


Consumption in Fabric is measured using capacity units (CUs). Using the Capacity 
Metrics app admins can view consumption in their organization. This report enables 
you to make informed decisions regarding the use of your organizational resources. 
You can then take action by scaling a capacity up or down, pausing a capacity 
operation, optimizing query efficiency, or buying another capacity if needed. 

## DR
For effective disaster recovery planning, it's critical that you understand the 
relationship between your home region and capacity locations. Understanding home 
region and capacity locations helps you make strategic selections of capacity regions, 
as well as the corresponding replication and recovery processes

Choosing a different region for your capacity doesn't entirely relocate all of your data 
to that region. Some data elements still remain stored in the home region. To see 
which data remains in the home region and which data is stored in the Multi-Geo 
enabled region, see Configure Multi-Geo support for Fabric Premium.
