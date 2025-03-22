
output "domain" {
  description = "Defaults values related with domain"
  value = {
    "default_ttl" : var.default_ttl,
    "slug" : local.domain_slug,
    "text" : var.domain

  }
}

output "mailgun" {
  description = "Information to connect and send emails"
  sensitive   = true
  value = {
    "domain" : module.mailgun_mail.domain,
    "username" : module.mailgun_mail.username,
    "password" : module.mailgun_mail.password,
    "region" : module.mailgun_mail.region,
    "host" : module.mailgun_mail.host,
    "port" : module.mailgun_mail.port
  }
}

output "mysql" {
  description = "Admin information about MySQL instance"
  sensitive   = true
  value = {
    "host" : module.aiven_mysql.host,
    "port" : module.aiven_mysql.port,
    "dbname" : module.aiven_mysql.dbname,
    "admin" : {
      "user" : module.aiven_mysql.username,
      "password" : module.aiven_mysql.password
    },
  }
}

output "postgresql" {
  description = "Admin information about PostgreSQL instance"
  sensitive   = true
  value = {
    "host" : module.aiven_pg.host,
    "port" : module.aiven_pg.port,
    "dbname" : module.aiven_pg.dbname,
    "admin" : {
      "user" : module.aiven_pg.username,
      "password" : module.aiven_pg.password
    },
  }
}

output "sentry" {
  description = "Information about Sentry org"
  sensitive   = true
  value = {
    "org" : {
      "id" : sentry_organization.main.id,
      "slug" : sentry_organization.main.slug
    },
    "team" : {
      "id" : sentry_team.main.id,
      "internal_id" : sentry_team.main.internal_id,
      "slug" : sentry_team.main.slug
    }
  }
}
