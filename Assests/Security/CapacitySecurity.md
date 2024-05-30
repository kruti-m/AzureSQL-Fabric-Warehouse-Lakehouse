# In this article we will cover:

* [Capacity Security](#capacity-security)
  * [Domain Roles](#domain-roles)


# Capacity Security

Capacities are the compute resources used by all Fabric workloads. Based on organizational requirements, capacities can be used as isolation boundaries for compute, chargebacks etc.

|<img src='/Assests/Security/Media/CapacitySecurity.PNG' width='1000' height='550'>|
| ----------- | 

A Microsoft Fabric capacity resides on a tenant.Each capacity that sits under a specific tenant is a distinct pool of resources allocated to Microsoft Fabric. The size of the capacity determines the amount of computation power available. Workspaces reside within capacities and are used as containers for Microsoft Fabric items. 

|<img src='/Assests/Security/Media/Tenant.png' width='700' height='300'>|
| ----------- | 

To share content and collaborate in Microsoft Fabric, your organization needs to have an [F or P capacity license](https://learn.microsoft.com/en-us/fabric/enterprise/licenses#capacity-license), and at least one per-user license. The workspace license mode dictates what kind of capacity the workspace can be hosted in and as a result the capabilities available.


Capacity licenses are split into Stock Keeping Units (SKUs). 

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
