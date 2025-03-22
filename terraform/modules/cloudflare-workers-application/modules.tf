module "sentry_project" {
  source           = "../sentry-project"
  project_name     = module.sentry_project_name.name
  project_platform = var.sentry_project_platform
  org_slug         = var.sentry_org_slug
  teams            = var.sentry_team_slugs
}

module "sentry_project_name" {
  source = "../name-gen"
  length = 8
  keepers = {
    fqdn = local.fqdn
  }
}

module "worker_name" {
  source    = "../name-gen"
  uppercase = false
  keepers = {
    fqdn = local.fqdn
  }
}
