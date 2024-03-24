
resource "azurerm_storage_container" "containers" {
  name                  = var.containers
  storage_account_name  = var.storage_accounts
  container_access_type = "private"
}