resource "google_cloud_run_v2_service_iam_binding" "main" {
  project  = google_cloud_run_v2_service.main.project
  location = google_cloud_run_v2_service.main.location
  name     = google_cloud_run_v2_service.main.name
  role     = "roles/viewer"
  members = [
    "allUsers",
  ]
}
