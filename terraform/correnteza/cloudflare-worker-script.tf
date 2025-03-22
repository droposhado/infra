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
    name = "SENTRY_DSN"
    text = local.sentry_dsn
  }

  # deployment is via CI
  lifecycle {
    ignore_changes = [
      content,
    ]
  }
}
