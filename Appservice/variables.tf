variable "resource_group_name" {
  type        = string
  description = "The name of the resource group for the NSG."
}

variable "location" {
  type        = string
  description = "The name of the resource group for the NSG."
}

variable "app_service_plan_id" {
    type = string
}

variable "appservicename"{
    type = string
    description = "Name of the appservice"
}

variable "app_settings" {
  type = map(string)
  default = {
    "Setting1" = "Value1"
    "Setting2" = "Value2"
  }
}
