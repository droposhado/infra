module "aiven_mysql" {
  source                  = "../modules/aiven-mysql"
  cloud_name              = var.aiven_cloud_name
  maintenance_window_dow  = var.aiven_maintenance_window_dow
  maintenance_window_time = var.aiven_maintenance_window_time
  plan                    = var.aiven_plan
  mysql_version           = var.aiven_mysql_version
  project_name            = var.aiven_project_name
  service_name            = local.aiven_mysql_service_name
  termination_protection  = var.aiven_termination_protection
}

module "aiven_mysql_service_name" {
  source    = "../modules/name-gen"
  uppercase = false
  keepers = {
    main = var.keepers
  }
}

module "aiven_pg" {
  source                  = "../modules/aiven-pg"
  cloud_name              = var.aiven_cloud_name
  maintenance_window_dow  = var.aiven_maintenance_window_dow
  maintenance_window_time = var.aiven_maintenance_window_time
  plan                    = var.aiven_plan
  pg_version              = var.aiven_pg_version
  project_name            = var.aiven_project_name
  service_name            = local.aiven_pg_service_name
  termination_protection  = var.aiven_termination_protection
}

module "aiven_pg_service_name" {
  source    = "../modules/name-gen"
  uppercase = false
  keepers = {
    main = var.keepers
  }
}

module "backup_uuid" {
  source = "../modules/uuid-gen"
  keepers = {
    main = var.keepers
  }
}

module "cloudflare_www_redirect" {
  source     = "../modules/cloudflare-www-redirect-to-root"
  account_id = data.cloudflare_zone.main.account_id
  domain     = var.domain
  zone_id    = data.cloudflare_zone.main.id
}

module "mailgun_mail" {
  source             = "../modules/cloudflare-mailgun"
  domain             = var.domain
  subdomain          = "mail"
  cloudflare_zone_id = data.cloudflare_zone.main.id
  mailgun_username   = "nao-responda"
  default_ttl        = var.default_ttl
}

module "migadu_mail" {
  source              = "../modules/cloudflare-migadu-mail"
  domain              = var.domain
  zone_id             = data.cloudflare_zone.main.id
  hosted_email_verify = var.migadu_hosted_email_verify
}

module "state_uuid" {
  source = "../modules/uuid-gen"
  keepers = {
    main = var.keepers
  }
}
