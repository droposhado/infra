resource "auth0_custom_domain" "main" {
  domain = "id.${var.domain}"
  type   = "auth0_managed_certs"
}