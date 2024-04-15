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
  value = {
    "blog" : var.github_blog_repo,
    "infra" : var.github_infra_repo,
    "username" : var.github_user
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