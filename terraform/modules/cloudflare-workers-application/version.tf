terraform {
  required_version = "1.5.4"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.45.0"
    }
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.22.0"
    }
    sentry = {
      source  = "jianyuan/sentry"
      version = "0.13.1"

    }
  }
}

provider "cloudflare" {}

provider "postgresql" {
  host            = local.postgresql.host
  port            = local.postgresql.port
  database        = local.postgresql.dbname
  username        = local.postgresql.admin.user
  password        = local.postgresql.admin.password
  sslmode         = "require"
  connect_timeout = 15

  # managed services needs this
  superuser = false
}

provider "sentry" {}
