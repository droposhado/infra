resource "google_kms_crypto_key" "main" {
  name            = "crypto-key-example"
  key_ring        = google_kms_key_ring.main.id
  rotation_period = "7776000s"

  lifecycle {
    prevent_destroy = true
  }
}