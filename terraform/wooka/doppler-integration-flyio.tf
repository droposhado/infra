resource "doppler_integration_flyio" "prod" {
  name    = "terraform-managed-sync"
  api_key = var.fly_token
}
