module "doppler_project_name" {
  source    = "../modules/name-gen"
  length    = 8
  uppercase = false
  keepers = {
    main = var.keepers
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
    main = var.keepers
  }
}
