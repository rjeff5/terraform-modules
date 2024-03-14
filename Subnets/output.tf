

output "subnet_names" {
  value = [for subnet in azurerm_subnet.example : subnet.name]
}
