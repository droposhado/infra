resource "random_string" "main" {
  keepers = var.keepers
  length  = var.length
  special = false
  upper   = var.uppercase
}