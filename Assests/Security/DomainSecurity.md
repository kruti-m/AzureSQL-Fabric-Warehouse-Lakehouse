# In this article we will cover:

* [Domain Security](#domain-security)
  * [Roles for Workspace](#roles-for-workspace)
  * [Giving access to workspace](#giving-access-to-workspaces)
  * [Existing workspace settings](#check-existing-workspace-settings)
  * [Workspace retention](#workspace-retention)
  * [Workspace governance](#govern-my-workspace)
  * [Workspace states](#workspace-states) 
  * [Quick Tips](#tips-when-working-with-workspaces)

# Domain Security

A domain is a logical grouping of workspaces.
A data mesh is a decentralized data architecture that organizes data by specific business domains, such as marketing, sales, human resources, etc.

Domain incorporate federated data architecture via data mesh approach. It provides for an IT centric data architectures, where the data is governed and managed centrally, to more federated models organized according to business needs. To group data into domains, workspaces are associated with domains. When a workspace is associated with a domain, all the items in the workspace are also associated with the domain, and they receive a domain attribute as part of their metadata.

|<img src='/Assests/Security/Media/DomainSecurity.PNG' width='1000' height='550'>|
| ----------- | 

Subdomains
A subdomain is a way for fine tuning the logical grouping of your data. You can create subdomains under domains. For information about how to create subdomains, see [Create subdomains](https://learn.microsoft.com/fabric/governance/domains#create-subdomains).

## Domain Roles

There are three roles involved in the creation and management of domains:

|<img src='/Assests/Security/Media/DomainRoles.PNG' width='570' height='435'>|
