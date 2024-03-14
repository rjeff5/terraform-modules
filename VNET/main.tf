resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name

  # Create subnets within the VNet
  subnet {
    name           = "frontend-subnet"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "app-subnet"
    address_prefix = "10.0.7.0/24"
  }

  # Add more subnets as needed
}
