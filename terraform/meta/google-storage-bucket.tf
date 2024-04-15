resource "google_storage_bucket" "state" {
  name          = local.state_bucket_name
  location      = var.gcp_region
  storage_class = "STANDARD"

  versioning {
    enabled = true
  }
}