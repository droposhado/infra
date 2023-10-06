resource "random_string" "gotify" {
  keepers = {
    domain      = var.domain
    environment = var.environment
  }

  length  = 8
  upper   = false
  special = false

  lifecycle {
    prevent_destroy = true
  }
}

resource "random_string" "redmine" {
  keepers = {
    domain      = var.domain
    environment = var.environment
  }

  length  = 8
  upper   = false
  special = false

  lifecycle {
    prevent_destroy = true
  }
}

resource "random_string" "sabedoria" {
  keepers = {
    domain      = var.domain
    environment = var.environment
  }

  length  = 8
  upper   = false
  special = false

  lifecycle {
    prevent_destroy = true
  }
}

resource "random_string" "seed" {
  keepers = {
    domain      = var.domain
    environment = var.environment
  }

  length  = 256
  upper   = false
  special = false

  lifecycle {
    prevent_destroy = true
  }
}

resource "random_string" "team" {
  keepers = {
    domain      = var.domain
    environment = var.environment
  }

  length  = 8
  upper   = false
  special = false

  lifecycle {
    prevent_destroy = true
  }
}

resource "random_string" "trakttv" {
  keepers = {
    domain      = var.domain
    environment = var.environment
  }

  length  = 8
  upper   = false
  special = false

  lifecycle {
    prevent_destroy = true
  }
}

resource "random_string" "uptime_kuma" {
  keepers = {
    domain      = var.domain
    environment = var.environment
  }

  length  = 8
  upper   = false
  special = false

  lifecycle {
    prevent_destroy = true
  }
}

resource "random_string" "wooka" {
  keepers = {
    domain      = var.domain
    environment = var.environment
  }

  length  = 8
  upper   = false
  special = false

  lifecycle {
    prevent_destroy = true
  }
}
