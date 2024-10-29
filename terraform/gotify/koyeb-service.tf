resource "koyeb_service" "main" {
  app_name = koyeb_app.main.name
  definition {
    name = module.service_name.name
    instance_types {
      type = "free"
    }
    ports {
      port     = tostring(var.gotify_port)
      protocol = "http"
    }
    scalings {
      min = 1
      max = 1
    }
    dynamic "env" {
      for_each = local.envs
      content {
        key   = env.value["key"]
        value = env.value["value"]
      }
    }
    routes {
      path = "/"
      port = tostring(var.gotify_port)
    }
    regions = var.gotify_regions
    docker {
      image = var.gotify_image
    }
  }
}
