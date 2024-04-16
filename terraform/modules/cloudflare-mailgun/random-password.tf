resource "random_password" "main" {
  keepers = {
    fqdn   = local.fqdn
    region = var.mailgun_region
  }
  length  = 256
  numeric = true
  upper   = true
  lower   = true
  special = true
}