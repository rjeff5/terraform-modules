# resource "azurerm_subnet" "example" {
#   count                = length(var.subnets)
#   name                 = var.subnets[count.index].name
#   resource_group_name  = var.resource_group_name
#   virtual_network_name = var.vnet_name
#   address_prefixes     = var.address_prefixes

# #   tags = var.tags
# }


# resource "azurerm_subnet" "example" {
#   for_each             = { for idx, subnet_name in var.subnet_names : idx => subnet_name }
#   name                 = each.value
#   resource_group_name  = var.resource_group_name
#   virtual_network_name = var.vnet_name
#   address_prefixes     = var.address_prefixes
# }


resource "azurerm_subnet" "example" {
  for_each             = var.subnet_names
  name                 = var.subnet_names[each.key]
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = [var.subnet_address_prefixes[each.key]]
}
