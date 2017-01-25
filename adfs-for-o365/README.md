# Creates a primary DC, a backup DC, n ADFS servers, n WAPs, a jump box, and a SQL Server instance.

This template will deploy a primary DC, a backup DC, n ADFS servers, n WAPs, a jump box, and a SQL Server instance (along with a new VNet, Storage Account and Load Balancer) and create a new  AD forest and domain, each VM will be created as a DC for the new domain and will be placed in an availability set. NSGs will be set to match typical ADFS configuration and only the jump box will have a public IP.

Click the button below to deploy

<a href="https://ms.portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FEvanBasalik%2Fazure-quickstart-templates%2Fadfs-for-o365%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https://ms.portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FEvanBasalik%2Fazure-quickstart-templates%2Fmaster%2Fadfs-for-o365%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

# Attribution

+   The base of the domain control portion was taken from the excellent HA DC <a href="https://github.com/Azure/azure-quickstart-templates/tree/master/active-directory-new-domain-ha-2-dc" target="_blank">template</a> created by Simon Davies. 

# Known Issues

+	This template is entirely serial due to some concurrency issues between the platform agent and the DSC extension which cause problems when multiple VM and\or extension resources are deployed concurrently, this will be fixed in the near future
