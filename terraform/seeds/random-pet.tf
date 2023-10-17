resource "random_pet" "k8s" {
  keepers = {
    domain      = var.domain
    environment = var.environment
  }

  length = 1

  lifecycle {
    prevent_destroy = true
  }
}

resource "random_pet" "pg" {
  keepers = {
    domain      = var.domain
    environment = var.environment
  }

  length = 1

  lifecycle {
    prevent_destroy = true
  }
}
