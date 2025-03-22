resource "cloudflare_worker_script" "main" {
  account_id = data.cloudflare_zone.main.account_id
  name       = local.fqdn_slug
  content    = var.cloudflare_worker_script_content

  compatibility_date  = var.cloudflare_worker_compatibility_date
  compatibility_flags = var.cloudflare_worker_compatibility_flags
  module              = var.cloudflare_worker_module

  dynamic "secret_text_binding" {
    for_each = var.cloudflare_worker_secrets # merge com o dsn que é gerado
    content {
      name = secret_text_binding.name
      text = secret_text_binding.text
    }
  }

  # deployment is via CI
  lifecycle {
    ignore_changes = [
      content,
    ]
  }
}
