module "dotroot" {
  source    = "../modules/dotroot"
  domain    = var.domain
  subdomain = var.subdomain
}

module "jornaleiro_token" {
  source  = "../modules/password-gen"
  length  = 98
  special = false
  keepers = {
    main = var.keepers
  }
}

module "jornaleiro_pg_name" {
  source = "../modules/name-gen"
  length = 48
  keepers = {
    main = var.keepers
  }
}

module "jornaleiro_pg_password" {
  source  = "../modules/password-gen"
  length  = 98
  special = false
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

module "worker_name" {
  source    = "../modules/name-gen"
  uppercase = false
  keepers = {
    main = var.keepers
  }
}

module "workers_script" {
  source                    = "../modules/cloudflare-workers-application"
  name                      = module.dotroot.fqdn_slug
  environment               = "production"
  cloudflare_worker_secrets = local.workers_secrets
  fqdn                      = module.dotroot.fqdn
  domain                    = var.domain
}