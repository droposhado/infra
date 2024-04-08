resource "random_password" "gotify" {
  keepers = {
    domain      = var.domain
    environment = var.environment
  }

  length           = 128
  special          = true
  override_special = "-_"

  lifecycle {
    prevent_destroy = true
  }
}