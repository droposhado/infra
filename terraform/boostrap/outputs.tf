
output "domain" {
  value = {
    "default_ttl" : var.default_ttl,
    "slug" : local.domain_slug,
    "text" : var.domain

  }
}

output "mailgun" {
  sensitive = true
  value = {
    "domain" : module.mailgun_mail.domain,
    "username" : module.mailgun_mail.username,
    "password" : module.mailgun_mail.password,
    "region" : module.mailgun_mail.region,
    "host" : module.mailgun_mail.host,
    "port" : module.mailgun_mail.port
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
