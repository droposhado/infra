module "app_name" {
  source    = "../modules/name-gen"
  length    = 16
  uppercase = false
  keepers = {
    bucket = var.gcs_bucket
  }
}

module "gotify_admin_name" {
  source = "../modules/name-gen"
  length = 48
  keepers = {
    host  = local.postgresql.host
    port  = local.postgresql.port
    admin = local.postgresql.admin.user
  }
}

module "gotify_admin_password" {
  source  = "../modules/password-gen"
  length  = 71
  special = false
  keepers = {
    host  = local.postgresql.host
    port  = local.postgresql.port
    admin = local.postgresql.admin.user
  }
}

module "gotify_pg_name" {
  source = "../modules/name-gen"
  length = 48
  keepers = {
    host  = local.postgresql.host
    port  = local.postgresql.port
    admin = local.postgresql.admin.user
  }
}

module "gotify_pg_password" {
  source  = "../modules/password-gen"
  length  = 98
  special = false
  keepers = {
    host  = local.postgresql.host
    port  = local.postgresql.port
    admin = local.postgresql.admin.user
  }
}

module "service_name" {
  source    = "../modules/name-gen"
  length    = 16
  uppercase = false
  keepers = {
    bucket = var.gcs_bucket
  }
}
