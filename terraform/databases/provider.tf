terraform {
  required_version = ">= 1.5.4"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.33.0"
    }
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.20.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "github" {}

provider "postgresql" {
  host            = module.aiven_pg.host
  port            = module.aiven_pg.port
  database        = var.default_db
  username        = module.aiven_pg.username
  password        = module.aiven_pg.password
  sslmode         = "require"
  connect_timeout = 15

  # managed services needs this
  superuser = false
}

provider "random" {}
