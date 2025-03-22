resource "auth0_custom_domain_verification" "main" {
  depends_on = [cloudflare_record.auth]

  custom_domain_id = auth0_custom_domain.main.id

  timeouts { create = "15m" }
}
