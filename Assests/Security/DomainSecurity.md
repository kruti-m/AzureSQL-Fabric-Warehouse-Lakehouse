# In this article we will cover:

* [Domain Security](#domain-security)
  * [Domain Roles](#domain-roles)
  * [Domain Creation](#domain-creation)
  * [Domain Settings](#check-existing-workspace-settings)
  * [Workspace Retention](#workspace-retention)
  * [Workspace Governance](#govern-my-workspace)
  * [Workspace States](#workspace-states) 
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

|<img src='/Assests/Security/Media/DomainRoles.PNG' width='700' height='400'>|


## Domain Creation

To create domain, you must be a Fabric admin.
Open the admin portal and select the Domains tab.On the Domains tab, select Create new domain.

|<img src='/Assests/Security/Media/DomainCreation.png' width='800' height='370'>|
| ----------- | 

In the New domain dialog that appears, provide a name (mandatory) and specify domain admins (optional). If you don't specify domain admins, you can do this later in the domain settings.Select Create. The domain is created, and you can continue configuring the domain as described in the following sections.

**Subdomain Creation**
To create subdomains for a domain, you must be Fabric admin or domain admin.
Open the domain you want to create a subdomain for and select New subdomain.Provide a name for the subdomain in the New subdomain dialog that appears. When done, select Create.

|<img src='/Assests/Security/Media/Subdomain.png' width='450' height='200'>|
| ----------- | 

## Domain Settings

To open the Domain settings side pane, open the domain or subdomain and select Domain settings (for subdomains, Subdomain settings).

|<img src='/Assests/Security/Media/DomainSettings.png' width='450' height='250'>|
| ----------- | 

Alternatively, for domains, you can hover over the domain on the Domain tab, select More options (...), and choose Settings.

|<img src='/Assests/Security/Media/DomainSettings2.png' width='400' height='150'>|
| ----------- | 