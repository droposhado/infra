output "cloudflare" {
  sensitive = true
  value = {
    "account_id" : data.cloudflare_zone.main.account_id,
    "api_token" : var.cloudflare_api_token,
    "zone_id" : data.cloudflare_zone.main.id

  }
}

output "domain" {
  value = {
    "default_ttl" : var.default_ttl,
    "slug" : local.domain_slug,
    "text" : var.domain

  }
}

output "github" {
  sensitive = true
  value = {
    "token" : var.github_token,
    "blog" : var.github_blog_repo,
    "infra" : var.github_infra_repo,
    "lp" : var.github_lp_repo,
    "maps" : var.github_maps_repo,
    "news" : var.github_news_repo,
    "username" : var.github_user
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

output "wooka" {
  sensitive = true
  value = {
    "bot_admins" : var.wooka_bot_admins,
    "bot_alt_prefixes" : var.wooka_bot_alt_prefixes,
    "zulip_email" : var.wooka_zulip_email,
    "zulip_key" : var.wooka_zulip_key,
    "zulip_site" : var.wooka_zulip_site
  }
}