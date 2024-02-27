variable "resource_group_name" {
  description = "The name of the resource group"
}

resource "azurerm_resource_group" "my_resource_group" {
  name     = var.resource_group_name
  location = var.location
}