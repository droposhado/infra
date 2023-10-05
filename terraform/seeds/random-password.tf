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

resource "random_password" "pg_cluster" {
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

resource "random_password" "sabedoria" {
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
