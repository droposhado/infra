resource "cloudflare_worker_script" "main" {
  account_id = data.cloudflare_zone.main.account_id
  name       = local.fqdn_slug
  content    = <<EOF
export default {
    async scheduled(request, env, ctx) {
        console.log("");
    },
};
EOF

  compatibility_date  = "2024-10-10"
  compatibility_flags = []
  module              = true

  secret_text_binding {
    name = "SENTRY_DSN"
    text = local.sentry_dsn
  }

  secret_text_binding {
    name = "WEBDAV_PASSWORD"
    text = var.bemtevi_webdav_password
  }

  secret_text_binding {
    name = "WEBDAV_CONTACT_DISPLAY_NAME"
    text = var.bemtevi_contact_display_name
  }

  secret_text_binding {
    name = "WEBDAV_SERVER_URL"
    text = var.bemtevi_webdav_server
  }

  secret_text_binding {
    name = "WEBDAV_USERNAME"
    text = var.bemtevi_webdav_username
  }

  secret_text_binding {
    name = "WEBDAV_WEBHOOK_URL"
    text = var.bemtevi_webhook_url
  }

  # deployment is via CI
  lifecycle {
    ignore_changes = [
      content,
    ]
  }
}
