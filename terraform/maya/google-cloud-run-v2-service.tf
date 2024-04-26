resource "google_cloud_run_v2_service" "default" {
  name     = module.cloud_run_service_name.name
  location = var.gcp_region
  ingress  = "INGRESS_TRAFFIC_ALL"

  template {
    containers {
      image = "docker.io/droposhado/maya:latest"

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
    }
  }
}
