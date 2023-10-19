resource "cloudflare_zone" "main" {
  account_id = var.account_id
  zone       = var.domain
}
