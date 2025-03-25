# modules/traffic_manager/outputs.tf
output "traffic_manager_fqdn" {
  value = azurerm_traffic_manager_profile.tm.fqdn
}