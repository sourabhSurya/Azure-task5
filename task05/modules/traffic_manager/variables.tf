# modules/traffic_manager/variables.tf
variable "name" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "method" {
  type = string
}

variable "app_services" {
  type = map(object({
    name             = string
    app_service_plan = string
  }))
}
