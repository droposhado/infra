terraform {
  required_version = "1.5.4"
  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.20.0"
    }
    sentry = {
      source  = "jianyuan/sentry"
      version = "0.11.2"
    }
  }
}

esses dados vem do remote state do meta
provider "postgresql" {
  host            = module.aws_rds_pg.address
  port            = module.aws_rds_pg.port
  database        = module.aws_rds_pg.db_name
  username        = module.aws_rds_pg.username
  password        = module.aws_rds_pg.password
  sslmode         = "require"
  connect_timeout = 15

  # managed services needs this
  superuser = false
}

provider "sentry" {}
