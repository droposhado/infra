resource "cloudflare_worker_script" "root" {
  account_id = data.cloudflare_zone.main.account_id
  name       = local.fqdn_slug
  content    = file("scripts/dist/index.js")
  module     = true

  plain_text_binding {
    name = "DOMAIN"
    text = var.domain
  }

  secret_text_binding {
    name = "TOKEN"
    text = local.token
  }

  plain_text_binding {
    name = "SLUG_SIZE"
    text = var.slug_size
  }


  secret_text_binding {
    name = "SENTRY_DSN"
    text = local.sentry_dsn
  }

  # This variable applies to c.env.DB
  d1_database_binding {
    database_id = cloudflare_d1_database.main.id
    name        = "DB"
  }
}
