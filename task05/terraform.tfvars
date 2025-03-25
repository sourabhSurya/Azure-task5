resource_groups = {
  rg1 = {
    name     = "my-resource-group"
    location = "East US"
  }
}

app_service_plans = {
  plan1 = {
    name           = "my-app-plan"
    location       = "East US"
    sku            = "P1v2"
    resource_group = "my-resource-group"
  }
}

app_services = {
  app1 = {
    name             = "my-app-service"
    location         = "East US"
    resource_group   = "my-resource-group"
    app_service_plan = "my-app-plan"
  }
}

traffic_manager = {
  name    = "my-traffic-manager"
  rg_name = "my-resource-group"
  method  = "Performance"
}
