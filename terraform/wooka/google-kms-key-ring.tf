resource "google_kms_key_ring" "main" {
  name     = "keyring-example"
  location = "regional"
}