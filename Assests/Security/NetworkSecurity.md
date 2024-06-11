# In this article we will cover:

* [OneLake Security](#onelake-security)
  * [PowerBI Embedded Analytics](#power-bi-embedded-analytics)
    * [Embedding Setup Tool](#embedding-setup-tool)
 
# Network Security

 Interactions within Fabric use the internal Microsoft network and traffic outside of the service is protected by default.

|<img src='/Assests/Security/Media/NetworkSecurity.PNG' width='1000' height='550'>|
| ----------- | 

The Fabric backend platform is protected by a virtual network and isn't directly accessible from the public internet other than through secure endpoints.By default, Fabric communicates between [experiences](https://learn.microsoft.com/fabric/get-started/microsoft-fabric-overview#components-of-microsoft-fabric) using the internal Microsoft backbone network. This configuration is different from having to set up multiple Platform as a Service (PaaS) services to connect to each other over a private network.Fabric's default security settings include:

* Microsoft Entra ID which is used to authenticate every request. [Fabric doesn't support other authentication methods such as account keys or SQL authentication, which rely on usernames and passwords.Conditional access requires Microsoft Entra ID P1 licenses.]
* Upon successful authentication, requests are routed to the appropriate backend service through secure Microsoft managed endpoints.
* Internal traffic between experiences in Fabric is routed over the Microsoft backbone.
* Traffic between clients and Fabric is encrypted using at least the Transport Layer Security (TLS) 1.2 protocol.


