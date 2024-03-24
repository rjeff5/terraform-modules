
resource "azurerm_storage_container" "containers" {
  for_each = toset(var.containers)
  name                  = each.value // Each value is the list of container names
  storage_account_name  = each.key   // Each key is the storage account name
  container_access_type = "private"
}
