terraform {
  required_version = ">= 1.5.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.15.0"
    }
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.20.0"
    }
  }
}

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
