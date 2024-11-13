module "sabedoria_pg_name" {
  source = "../modules/name-gen"
  length = 48
  keepers = {
    host  = local.postgresql.host
    port  = local.postgresql.port
    admin = local.postgresql.admin.user
  }
}

module "sabedoria_pg_password" {
  source  = "../modules/password-gen"
  length  = 98
  special = false
  keepers = {
    host  = local.postgresql.host
    port  = local.postgresql.port
    admin = local.postgresql.admin.user
  }
}

module "sentry_project" {
  source           = "../modules/sentry-project"
  project_name     = module.sentry_project_name.name
  project_platform = var.sentry_project_platform
  org_slug         = local.sentry.org.slug
  teams            = [local.sentry.team.slug]
}

module "sentry_project_name" {
  source = "../modules/name-gen"
  length = 8
  keepers = {
    bucket = var.gcs_bucket
  }
}

module "worker_name" {
  source    = "../modules/name-gen"
  uppercase = false
  keepers = {
    fqdn = local.fqdn
  }
}
