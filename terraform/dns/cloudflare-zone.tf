resource "cloudflare_zone" "droposhado_org" {
  account_id = var.account_id
  zone       = var.domain
}
