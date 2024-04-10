module "aiven_pg" {
  source                  = "../modules/aiven-pg"
  cloud_name              = var.aiven_cloud_name
  maintenance_window_dow  = var.aiven_maintenance_window_dow
  maintenance_window_time = var.aiven_maintenance_window_time
  plan                    = var.aiven_plan
  pg_version              = var.aiven_pg_version
  project_name            = var.aiven_project_name
  service_name            = local.aiven_service_name
  termination_protection  = var.aiven_termination_protection
}

module "aiven_pg_service_name" {
  source    = "../modules/name-gen"
  uppercase = false
  keepers   = {
    domain  = var.domain
    zone_id = data.cloudflare_zone.main.id
  }
}

module "cloudflare_www_redirect" {
  source     = "../modules/cloudflare-www-redirect-to-root"
  account_id = data.cloudflare_user.me.id
  domain     = var.domain
  zone_id    = data.cloudflare_zone.main.id
}

module "migadu_mail" {
  source  = "../modules/cloudflare-migadu-mail"
  domain  = var.domain
  zone_id = data.cloudflare_zone.main.id
}




