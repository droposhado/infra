resource "cloudflare_worker_script" "main" {
  account_id = data.cloudflare_zone.main.account_id
  name       = local.fqdn_slug
  content    = <<EOF
export default {
    async fetch(request, env, ctx) {
        return new Response("", {
            headers: {
                "content-type": "text/plain",
            },
        });
    },
};
EOF

  compatibility_date  = "2024-10-10"
  compatibility_flags = []
  module              = true

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

  # deployment is via CI
  lifecycle {
    ignore_changes = [
      content,
    ]
  }
}
