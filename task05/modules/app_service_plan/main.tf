resource "azurerm_app_service_plan" "asp" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group
  kind                = "Windows"

  sku {
    tier = "PremiumV3"
    size = var.sku
  }
}
