resource "azurerm_resource_group" "my_resource_group" {
  name     = var.resource_group_name
  location = var.location
}

# resource_group_name and location --> mandatory arguments needs to be passed in the root module

