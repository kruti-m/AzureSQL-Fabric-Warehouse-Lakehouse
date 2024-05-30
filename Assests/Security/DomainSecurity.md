# In this article we will cover:

* [Domain Security](#domain-security)
  * [Domain Roles](#domain-roles)
  * [Domain Creation](#domain-creation)
  * [Domain Settings](#domain-settings)
  * [Workspace Assignment to Domains/Subdomains](#workspace-assignment-to-domainsubdomains)
  * [Endorsement](#endorsement)
  * [Auditing](#auditing)

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

A default domain is a domain that has been defined as the default domain for specified users and/or security groups. To define a domain as a default domain, you must be a Fabric admin or a domain admin of the domain. Select Default domain and specify users and/or security groups.

|<img src='/Assests/Security/Media/DefaultDomainSetting.png' width='600' height='250'>|
| ----------- |

When you define a domain as the default domain for specified users and/or security groups, the following happens:

1. The system scans the organization's workspaces. When it finds a workspace whose admin is a specified user or member of a specified security group:
    * If the workspace already has a domain assignment, it is preserved. The default domain doesn't override the current assignment.
    * If the workspace is unassigned, it is assigned to the default domain.
2. After this, whenever a specified user or member of a specified security group creates a new workspace, it is assigned to the default domain.

The specified users and/or members of the specified security groups generally automatically become domain contributors of workspaces that are assigned in this manner.To open the Domain settings side pane, open the domain or subdomain and select Domain settings (for subdomains, Subdomain settings).
Alternatively, for domains, you can hover over the domain on the Domain tab, select More options (...), and choose Settings.

|<img src='/Assests/Security/Media/DomainSettings.png' width='450' height='250'>|<img src='/Assests/Security/Media/DomainSettings2.png' width='450' height='150'>|
| ----------- |----------- | 


The domain settings side pane has the following tabs:

* [General settings](https://learn.microsoft.com/fabric/governance/domains#edit-name-and-description): Edit domain name and description
* [Image](https://learn.microsoft.com/fabric/governance/domains#specify-a-domain-image): Specify domain image
* [Admins](https://learn.microsoft.com/fabric/governance/domains#specify-domain-admins): Specify domain admins
* [Contributors](https://learn.microsoft.com/fabric/governance/domains#specify-domain-contributors): Specify domain contributors
* [Default domain](https://learn.microsoft.com/fabric/governance/domains#define-the-domain-as-a-default-domain): Set up domain as a default domain
* [Delegated settings](https://learn.microsoft.com/fabric/governance/domains#delegate-settings-to-the-domain-level): Override tenant-level settings

## Workspace Assignment to Domain/Subdomains

To assign workspaces to a domain or subdomain in the admin portal, you must be a Fabric admin or a domain admin.Go to the domain or subdomain's page and select Assign workspaces.In the Assign workspaces to this domain side pane, select how to assign the workspaces.

|<img src='/Assests/Security/Media/DomainAssignment.png' width='450' height='220'>|<img src='/Assests/Security/Media/DomainAssignment2.png' width='400' height='300'>|
| ------------- | ---------- |

* **Assign by workspace name**: Some organizations have naming conventions for workspaces that make it easy to identify the data's business context.If a workspace is already associated with another domain, you'll see an icon next to the specific name.
* **Assign by workspace admin**: You can select specific users or security groups as per your business structure.When selected all the workspaces the users and security groups are admins of will be associated to the domain. This action excludes "My workspaces". 
* **Assign by capacity**: Some organizations have dedicated capacities per department/business unit.When you confirm your selection, all the workspaces associated to the selected capacities will be assigned to the domain.This action excludes "My workspaces".This action affects existing workspaces only.

To unassign a workspace from a domain or subdomain, select the checkbox next to the workspace name and then select the Unassign button above the list. You can select several checkboxes to unassign more than one workspace at a time.

## Endorsement

Organizations often have large numbers of Microsoft Fabric items available for sharing and reuse by their Fabric users. Identifying trustworthy, authoritative items can be difficult. Endorsed items are also given priority in some searches, and you can sort for endorsed items for in some lists.There are two kinds of endorsement: **[Promotion](https://learn.microsoft.com/fabric/get-started/endorsement-promote-certify#promote-items)** & **[Certification](https://learn.microsoft.com/fabric/get-started/endorsement-promote-certify#certify-items)**.

> :memo: **Note:** You can request permission to Certify from Fabric Admin.

|<img src='/Assests/Security/Media/Endorsement.PNG' width='420' height='350'>|

## Auditing

Whenever a domain is created, edited, or deleted, that activity is recorded in the audit log for Fabric. You can track these activities in the unified audit log or in the Fabric activity log.These settings are configured in the tenant settings section of the Admin portal. 

This information is recorded in the OperationProperties section of the details side pane that opens when you select a domain-related activity on the Audit search page.

| Activity flow | Activity operation name | 
|:---|:---|
| Create domain/sub-domain | InsertDataDomainAsAdmin |
| Delete domain/sub-domain | DeleteDataDomainAsAdmin |
| Update domain/sub-domain | UpdateDataDomainAsAdmin |
| Assign/Unassign workspace to the domain | UpdateDataDomainFoldersRelationsAsAdmin |
| Unassign all workspaces to the domain | DeleteAllDataDomainFoldersRelationsAsAdmin | 
| Assign/Unassign workspaces to the domain as contributor | UpdateDataDomainFoldersRelationsAsContributor |
| Remove domain from workspace settings as workspace owner | DeleteDataDomainFolderRelationsAsFolderOwner |
| Initiate/Process bulk assign domain by workspace owners | BulkAssignDataDomainByWsOwnersAsAdmin |
| Initiate/Process bulk assign domain by capacities | BulkAssignDataDomainByCapacitiesAsAdmin |
| Add/Delete/Update domain access | UpdateDataDomainAccessAsAdmin |
| Add/Delete/Update default domain | UpdateDefaultDataDomainAsAdmin |
| Add/Delete/Update contributors | UpdateDataDomainContributorsScopeAsAdmin |
| Set/Remove domain branding | UpdateDataDomainBrandingAsAdmin |
