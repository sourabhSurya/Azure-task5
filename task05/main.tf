module "resource_group" {
  source   = "./modules/resource_group"
  for_each = var.resource_groups

  name     = each.value.name
  location = each.value.location
}

module "app_service_plan" {
  source   = "./modules/app_service_plan"
  for_each = var.app_service_plans

  name           = each.value.name
  location       = each.value.location
  sku            = each.value.sku
  resource_group = each.value.resource_group
}

module "app_service" {
  source   = "./modules/app_service"
  for_each = var.app_services

  name             = each.value.name
  location         = each.value.location
  resource_group   = each.value.resource_group
  app_service_plan = each.value.app_service_plan
}

module "traffic_manager" {
  source       = "./modules/traffic_manager"
  name         = var.traffic_manager.name
  rg_name      = var.traffic_manager.rg_name
  method       = var.traffic_manager.method
  app_services = var.app_services
}
