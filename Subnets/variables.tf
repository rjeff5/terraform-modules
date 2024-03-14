


variable "subnet_names" {
  type        = map(string)
  description = "Map of subnet names."
}

variable "subnet_address_prefixes" {
  type        = map(string)
  description = "Map of subnet address prefixes."
}


variable "resource_group_name" {
  type        = string
  description = "The name of the resource group for the Subnet."
}

variable "vnet_name" {
  type        = string
  description = "The name of the Virtual Network containing the Subnet."
}