# modules/traffic_manager/main.tf
resource "azurerm_traffic_manager_profile" "tm" {
  name                   = var.name
  resource_group_name    = var.rg_name
  traffic_routing_method = var.method

  dns_config {
    relative_name = var.name
    ttl           = 30
  }

  monitor_config {
    protocol = "HTTP"
    port     = 80
    path     = "/"
  }
}

resource "azurerm_traffic_manager_azure_endpoint" "tm_endpoints" {
  for_each = var.app_services

  name               = each.value.name
  profile_id         = azurerm_traffic_manager_profile.tm.id
  weight             = 100
  target_resource_id = each.value.app_service_plan
}