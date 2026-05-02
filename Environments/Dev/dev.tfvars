location    = "canadacentral"
environment = "dev"

# Required by AKS module
aks_name   = "dev-aks"
rg_name    = "dev-rg"
subnet_id  = "/subscriptions/2bf919b9-f92e-4c32-b158-13f880f09b4d/resourceGroups/dev-rg/providers/Microsoft.Network/virtualNetworks/dev-vnet/subnets/dev-subnet"
node_count = 1
node_size  = "Standard_DS2_v2"


