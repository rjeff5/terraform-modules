variable "vnet_name" {
  type        = string
  description = "The name of the Virtual Network."
}

variable "address_space" {
  type        = list(string)
  description = "The address space for the Virtual Network."
}

variable "location" {
  type        = string
  description = "The location for the Virtual Network."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group for the Virtual Network."
}

# variable "tags" {
#   type        = map(string)
#   description = "A map of tags to apply to the Virtual Network."
# }