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
    }
  }
}
