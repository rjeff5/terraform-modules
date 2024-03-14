resource "azurerm_app_service" "example" {
  name                = var.appservicename
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id
  app_settings        = var.app_settings
}