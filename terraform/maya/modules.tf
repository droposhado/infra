module "cloud_run_service_name" {
  source  = "../modules/name-gen"
  length  = 8
  special = false
  keepers = {
    pg_data = local.postgresql
  }
}

module "maya_pg_name" {
  source  = "../modules/name-gen"
  length  = 48
  special = false
  keepers = {
    pg_data = local.postgresql
  }
}

module "maya_pg_password" {
  source  = "../modules/password-gen"
  length  = 98
  special = false
  keepers = {
    pg_data = local.postgresql
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
  source  = "../modules/name-gen"
  length  = 8
  special = false
  keepers = {
    pg_data = local.postgresql
  }
}

module "maya_token" {
  source  = "../modules/password-gen"
  length  = 256
  special = false
  keepers = {}
}
