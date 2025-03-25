# modules/app_service/outputs.tf
output "app_name" {
  value = azurerm_app_service.app.name
}
