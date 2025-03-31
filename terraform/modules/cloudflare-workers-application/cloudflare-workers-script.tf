resource "cloudflare_workers_script" "main" {
  account_id = data.cloudflare_zone.main.account_id
  name       = var.name
  content    = var.cloudflare_worker_script_content

  compatibility_date  = var.cloudflare_worker_compatibility_date
  compatibility_flags = var.cloudflare_worker_compatibility_flags
  module              = var.cloudflare_worker_module

  dynamic "secret_text_binding" {
    for_each = var.cloudflare_worker_secrets
    content {
      name = secret_text_binding.key
      text = secret_text_binding.value
    }
  }

  # deployment is via CI
  lifecycle {
    ignore_changes = [
      content,
    ]
  }
}
