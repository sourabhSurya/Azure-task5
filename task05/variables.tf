variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
  }))
  description = "Resource group configurations"
}

variable "app_service_plans" {
  type = map(object({
    name           = string
    location       = string
    sku            = string
    resource_group = string
  }))
  description = "App Service Plan configurations"
}

variable "app_services" {
  type = map(object({
    name             = string
    location         = string
    resource_group   = string
    app_service_plan = string
  }))
  description = "App Service configurations"
}

variable "traffic_manager" {
  type = object({
    name    = string
    rg_name = string
    method  = string
  })
  description = "Traffic Manager profile configuration"
}
