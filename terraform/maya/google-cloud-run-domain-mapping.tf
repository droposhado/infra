resource "google_cloud_run_domain_mapping" "default" {
  name     = "${var.subdomain}.${var.domain}"
  location = google_cloud_run_v2_service.main.location
  metadata {
    namespace = data.google_project.current.project_id
  }
  spec {
    route_name = google_cloud_run_v2_service.main.name
  }
}
