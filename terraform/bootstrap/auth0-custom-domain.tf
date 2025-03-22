resource "auth0_custom_domain" "main" {
  domain = "id.droposhado.org"
  type   = "auth0_managed_certs"
}