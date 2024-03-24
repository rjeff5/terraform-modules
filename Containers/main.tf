
resource "azurerm_storage_container" "containers" {
for_each = toset(var.storage_accounts)
  name                  = var.containers
  storage_account_name  = var.storage_accounts
  container_access_type = "private"
}