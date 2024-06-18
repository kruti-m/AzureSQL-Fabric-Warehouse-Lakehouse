# In this article we will cover:

* [Network Security](#network-security)
  * [Private Links](#private-links)
    * [How-To Enable](#how-to-enable)
  * [Service Tags](#service-tags)
  * [URL's and Ports](#urls-and-ports)

# Network Security

 Interactions within Fabric use the internal Microsoft network and traffic outside of the service is protected by default.

|<img src='/Assests/Security/Media/NetworkSecurity.PNG' width='1000' height='550'>|
| ----------- | 

The Fabric backend platform is protected by a virtual network and isn't directly accessible from the public internet other than through secure endpoints.By default, Fabric communicates between [experiences](https://learn.microsoft.com/fabric/get-started/microsoft-fabric-overview#components-of-microsoft-fabric) using the internal Microsoft backbone network. This configuration is different from having to set up multiple Platform as a Service (PaaS) services to connect to each other over a private network.Fabric's default security settings include:

* Microsoft Entra ID which is used to authenticate every request. [Fabric doesn't support other authentication methods such as account keys or SQL authentication, which rely on usernames and passwords.Conditional access requires Microsoft Entra ID P1 licenses.]
* Upon successful authentication, requests are routed to the appropriate backend service through secure Microsoft managed endpoints.
* Internal traffic between experiences in Fabric is routed over the Microsoft backbone.
* Traffic between clients and Fabric is encrypted using at least the Transport Layer Security (TLS) 1.2 protocol.

With PaaS services, it's common to put the compute in the same private network as the storage account.

## Workspace Managed Private Endpoint [Outbound Traffic]

Managed virtual networks are virtual networks that are created and managed by Microsoft Fabric for each Fabric workspace. It helps enable network security features such as managed private endpoints, and private link support for Data Engineering and Data Science items in Microsoft Fabric that use Apache Spark.

|<img src='/Assests/Security/Media/ManagedVnet.gif' width='700' height='370'>|
| ----------- | 

### How-To Enable (Workspace Level)

Go to Workspace Settings -> Network Security -> Create Managed Private Endpoint

|<img src='/Assests/Security/Media/ManagedPrivateEndpoint.gif' width='700' height='370'>|
| ----------- | 

Fabric workspaces that are provisioned with a dedicated virtual network provide you with value in three ways:

1. With a managed virtual network you get complete network isolation for the Spark clusters running your Spark jobs (which allow users to run arbitrary user code) while offloading the burden of managing the virtual network to Microsoft Fabric.
2. You don't need to create a subnet for the Spark clusters based on peak load, as this is managed for you by Microsoft Fabric.
3. A managed virtual network for your workspace, along with managed private endpoints, allows you to access data sources that are behind firewalls or otherwise blocked from public access.

## Private Links [Inbound Traffic]

With private endpoints your service is assigned a private IP address from your virtual network.
Private Link provides private access to Azure services. Here, "private" means that the connection uses the Microsoft Azure backbone network instead of the internet. To make that switch, Private Link changes the connectivity method for the Azure resource from public endpoint to private endpoint.
Now you don't access the Azure resource using a public IP address. Instead, you use a private IP address that Azure assigns to the resource from the address space of your subnet.The resource's public endpoint still exists, however, even though you're not using it. It's possible to disable the Azure resource's public endpoint, which bypasses that potential security issue. You can configure Fabric to deny all requests that don't come from the configured network path.

### How-To Enable (Tenant Level)

Tenant admins can enable the Private Link setting in the Admin portal of their Microsoft Fabric tenant. There are two tenant settings in the Fabric admin portal involved in Private Link
configuration: **Azure Private Links** and **Block Public Internet Access**.

|<img src='/Assests/Security/Media/TenantPrivateLink.PNG' width='650' height='350'>|

|<img src='/Assests/Security/Media/TenantSettingPrivateLink.gif' width='600' height='350'>|

A. If Azure Private Link is properly configured and Block public Internet access is enabled:

* Supported Fabric items are only accessible for your organization from private endpoints, and aren't accessible from the public Internet.
* Traffic from the virtual network targeting endpoints and scenarios that support private links are transported through the private link.
* Traffic from the virtual network targeting endpoints and scenarios that don't support private links will be blocked by the service, and won't work.
* There might be scenarios that don't support private links, which therefore will be blocked at the service when Block Public Internet Access is enabled.

B. If Azure Private Link is properly configured and Block public Internet access is disabled:

* Traffic from the public Internet will be allowed by Fabric services.
* Traffic from the virtual network targeting endpoints and scenarios that support private links are transported through the private link.
* Traffic from the virtual network targeting endpoints and scenarios that don't support private links are transported through the public Internet, and will be allowed by Fabric services.
* If the virtual network is configured to block public Internet access, scenarios that don't support private links will be blocked by the virtual network, and won't work.

Refer [this link](https://learn.microsoft.com/fabric/security/security-private-links-overview#private-link-in-fabric-experiences) to understand Private Link in Fabric experiences. The [cost of private links](https://azure.microsoft.com/pricing/details/private-link/) and the increase of the [ExpressRoute](https://learn.microsoft.com/azure/expressroute/expressroute-introduction) bandwidth to allow private connectivity from your network, might add costs to your organization.

Before you enable or disable any defaults it's noteworthy to check the considerations and limitations for Private Endpoints. For example:

* Private link doesn't support in Trial capacity.
* Each private endpoint can be connected to one tenant only.
* On-premises data gateways aren't supported and fail to register when Private Link is enabled. To run the gateway configured successfully, Private Link must be disabled. VNet data gateways will work.


## Service Tags

IP addresses within Azure have protections enabled by default to build extra layers of protections against security threats. These protections include integrated DDoS protection and protections at the edge such as enablement of Resource Public Key Infrastructure (RPKI). RPKI protects Microsoft networks to ensure no one else tries to announce the Microsoft IP space on the Internet. Azure automatically applies RPKI and DDoS protections to mitigate IP spoofing.

Many customers enable Service Tags as part of their strategy of defense. Service Tags are labels that identify Azure services by their IP ranges. A service tag represents groups of IP address prefixes associated with specific Azure services and can be used in Network Security Groups (NSGs), Azure Firewall, and User-Defined Routes (UDR).

One of the recommendations and standard procedures is to use an Access Control List (ACL) to protect an environment from harmful traffic. When you set up IP ACLs, you're setting up a list of IP Addresses that you want to allow to traverse the network and blocking all others. In addition, you're applying these policies not just on the IP address but also on the port. Service tags reduce the number of manual touches that are required and ensure that the traffic for a service is always accurate.You can use service tags to achieve network isolation and protect your Azure resources from the general Internet while accessing Azure services that have public endpoints. 

In Microsoft Fabric, you can use the service tags listed in the table below. There's no service tag for untrusted code which is used in Data Engineering items.

| Tag | Purpose | Can use inbound or outbound? | Can be regional? | Can use with Azure Firewall? |
|--|--|--|--|--|
| DataFactory | Azure Data Factory | Both | No | Yes |
| DataFactoryManagement| On premises data pipeline activity | Outbound | No | Yes |
| EventHub | Azure Event Hubs | Outbound | Yes | Yes |
| Power BI | Power BI and Microsoft Fabric | Both | No | Yes |
| PowerQueryOnline | Power Query Online | Both | No | Yes |
| KustoAnalytics | Real-Time Intelligence | Both | No | No |

## URL's and Ports

Microsoft Fabric URLs required for interfacing with Fabric workloads. The URLs are divided into two categories: required and optional. Fabric requires only TCP Port 443 to be opened for the listed endpoints. The Power BI service requires only TCP Port 443 to be opened for the listed endpoints.The Power BI service requires internet connectivity. The endpoints listed in the following tables should be reachable for customers who use the Power BI service. All endpoints in the Power BI service support HTTP/2.

Table below contains the **required URL's** for each experience in Fabric

|Purpose   |Endpoint  |Port      |
|:---------|:---------|:---------|
|**Required**: Portal|*.fabric.microsoft.com|TCP 443|
|For OneLake access for DFS APIs (default Onelake endpoint) |*.onelake.dfs.fabric.microsoft.com|Port 1443|
|Onelake endpoint for calling Blob APIs|*.onelake.blob.fabric.microsoft.com|TCP 443|
|**PowerBI For outbound connections**|||
|**Required**: Portal|*.powerbi.com|TCP 443|
|**Required**: Backend APIs for Portal|*.pbidedicated.windows.net|TCP 443|
|**Required**: Cloud pipelines|No specific endpoint is required|N/A|
|**PowerBI For inbound connections**|||
|**PowerBI For inbound connections**|No specific endpoints other than the customer's data store endpoints required in pipelines and behinds the firewall.<br>(User can use service tag DataFactory, regional tag is supported, like DataFactory.WestUs)|
|**Lakehouse for Inbound connections**|https://cdn.jsdelivr.net/npm/monaco-editor*|N/A|
|**Notebook for Inbound connections (icons)**|http://res.cdn.office.net/|N/A|
|**Required**: Notebook backend|https://\*.pbidedicated.windows.net<br>wss://\*.pbidedicated.windows.net<br>(HTTP/WebSocket)|N/A|
|**Required**: Lakehouse backend|https://onelake.dfs.fabric.microsoft.com|N/A|
|**Required**: Shared backend|https://*.analysis.windows.net|N/A|
|**Required**: DE/DS extension UX|https://pbides.powerbi.com|N/A|
|**Required**: Notebooks UX|https://aznb-ame-prod.azureedge.net|N/A|
|**Required**: Notebooks UX|https://*.notebooks.azuresandbox.ms|N/A|
|**Required**: Notebooks UX|https://content.powerapps.com|N/A|
|**Required**: Notebooks UX|https://aznbcdn.notebooks.azure.net|N/A|
|**Data Warehouse**|||
|**Required**: Datamart SQL |datamart.fabric.microsoft.com|1433|
|**Required**: Datamart SQL |datamart.pbidedicated.microsoft.com|1433|
|**Required**: Fabric DW SQL |datawarehouse.fabric.microsoft.com|1433|
|**Required**: Fabric SQL |datawarehouse.pbidedicated.microsoft.com|1433|
|**Data Science**|||
|Inbound connections (library management for PyPI)|https://pypi.org/*|N/A|
|Inbound connections (library management for Conda)|local static endpoints for condaPackages|N/A|
|**Kusto Database**|||
||https://*.z[0-9].kusto.fabric.microsoft.com||
|**Event Stream**|||
|Customers can send/read events from Event stream in their custom app |sb://*.servicebus.windows.net|http: 443<br>amqp: 5672/5673<br>kafka: 9093|

More Details

[Add Fabric URLs to your allowlist](https://learn.microsoft.com/fabric/security/fabric-allow-list-urls)
[Add Power BI URLs to allowlist](https://learn.microsoft.com/fabric/security/power-bi-allow-list-urls)