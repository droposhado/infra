resource "random_uuid" "k8s" {
  keepers = {
    domain      = var.domain
    environment = var.environment
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "random_uuid" "pg" {
  keepers = {
    domain      = var.domain
    environment = var.environment
  }

  lifecycle {
    prevent_destroy = true
  }
}


resource "random_uuid" "sabedoria" {
  keepers = {
    domain      = var.domain
    environment = var.environment
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "random_uuid" "trakttv" {
  keepers = {
    domain      = var.domain
    environment = var.environment
  }

  lifecycle {
    prevent_destroy = true
  }
}
