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
    fqdn   = local.fqdn
  }
}

module "worker_name" {
  source    = "../modules/name-gen"
  uppercase = false
  keepers = {
    bucket = var.gcs_bucket
    fqdn   = local.fqdn
  }
}
