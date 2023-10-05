resource "random_uuid" "baserow" {
  keepers = {
    keeper = var.keeper
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "random_uuid" "maya" {
  keepers = {
    keeper = var.keeper
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "random_uuid" "sabedoria" {
  keepers = {
    keeper = var.keeper
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "random_uuid" "trakttv" {
  keepers = {
    keeper = var.keeper
  }

  lifecycle {
    prevent_destroy = true
  }
}
