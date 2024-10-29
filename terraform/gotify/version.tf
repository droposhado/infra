terraform {
  required_version = "1.5.4"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.35.0"
    }
    koyeb = {
      source  = "koyeb/koyeb"
      version = "0.1.6"
    }
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.22.0"
    }
  }
}

provider "cloudflare" {}

provider "koyeb" {}

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
