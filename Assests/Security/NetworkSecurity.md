# In this article we will cover:

* [Network Security](#network-security)
  * [Private Links](#private-links)
    * [How-To Enable](#how-to-enable)
 
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

## Private Links

With private endpoints your service is assigned a private IP address from your virtual network.
Private Link provides private access to Azure services. Here, "private" means that the connection uses the Microsoft Azure backbone network instead of the internet. To make that switch, Private Link changes the connectivity method for the Azure resource from public endpoint to private endpoint.
Now you don't access the Azure resource using a public IP address. Instead, you use a private IP address that Azure assigns to the resource from the address space of your subnet.The resource's public endpoint still exists, however, even though you're not using it. It's possible to disable the Azure resource's public endpoint, which bypasses that potential security issue. You can configure Fabric to deny all requests that don't come from the configured network path.

### How-To Enable

There are two tenant settings in the Fabric admin portal involved in Private Link configuration: **Azure Private Links** and **Block Public Internet Access**.

|<img src='/Assests/Security/Media/TenantPrivateLink.PNG' width='700' height='450'>|
| ----------- | 

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