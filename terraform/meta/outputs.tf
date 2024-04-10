output "cloudflare" {
  sensitive = true
  value = {
    "zone_id" : data.cloudflare_zone.main.id,
    "account_id" : data.cloudflare_user.me.id,
    "domain" : var.domain
  }
}

output "domain" {
  value = {
    "text" : var.domain,
    "slug" : local.domain_slug
  }
}

output "postgresql" {
  sensitive = true
  value = {
    "host" : module.aiven_pg.host,
    "port" : module.aiven_pg.port,
    "admin" : {
      "user" : module.aiven_pg.username,
      "password" : module.aiven_pg.password
    },
  }
}

output "sentry" {
  sensitive = true
  value = {
    "org" : {
      "id" : sentry_organization.main.id,
      "slug" : sentry_organization.main.slug
    },
    "team" : {
      "id" : sentry_team.main.id,
      "internal_id" : sentry_team.main.internal_id,
      "slug" : sentry_organization.main.slug
    }
  }
}