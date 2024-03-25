
resource "azurerm_subnet" "example" {
  for_each             = var.subnet_names
  name                 = var.subnet_names[each.key]
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = [var.subnet_address_prefixes[each.key]]
}
