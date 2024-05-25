resource "google_cloud_run_v2_service" "main" {
  name     = module.cloud_run_service_name.name
  location = lower(var.gcp_region)
  ingress  = "INGRESS_TRAFFIC_ALL"

  template {
    containers {
      image = var.image
      ports {
        container_port = var.port
      }
      env {
        name  = "FLASK_APP"
        value = var.flask_app
      }
      env {
        name  = "DATABASE_URL"
        value = local.database_url
      }
      env {
        name  = "SENTRY_DSN"
        value = local.sentry_dsn
      }
      env {
        name  = "TOKEN"
        value = local.token
      }
      env {
        name  = "DATABASE_INIT"
        value = 1
      }
    }
  }
}
