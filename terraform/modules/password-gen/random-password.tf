resource "random_password" "main" {
  keepers = var.keepers
  length  = var.length
  special = var.special
}