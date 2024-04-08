resource "random_uuid" "main" {
  keepers = var.keepers
}

resource "random_string" "main" {
  keepers = var.keepers
  length           = var.length
  special          = false
}