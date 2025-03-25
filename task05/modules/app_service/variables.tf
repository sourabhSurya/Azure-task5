# modules/app_service/variables.tf
variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group" {
  type = string
}

variable "app_service_plan" {
  type = string
}