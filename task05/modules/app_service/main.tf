# modules/app_service/main.tf
resource "azurerm_app_service" "app" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group
  app_service_plan_id = var.app_service_plan

  site_config {
    ip_restriction {
      name       = "allow-ip"
      action     = "Allow"
      ip_address = "18.153.146.156/32"
    }
    ip_restriction {
      name        = "allow-tm"
      action      = "Allow"
      service_tag = "AzureTrafficManager"
    }
  }
}