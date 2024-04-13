resource "google_storage_bucket" "state" {
  name     = local.state_bucket_name
  location = "US"
}