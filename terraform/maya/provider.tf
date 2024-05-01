terraform {
  required_version = "1.5.4"
  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.22.0"
    }
    sentry = {
      source  = "jianyuan/sentry"
      version = "0.12.3"
    }
  }
}

provider "postgresql" {
  host            = local.postgresql.host
  port            = local.postgresql.port
  database        = local.postgresql.db_name
  username        = local.postgresql.admin.user
  password        = local.postgresql.admin.password
  sslmode         = "require"
  connect_timeout = 15

  # managed services needs this
  superuser = false
}

provider "sentry" {}
