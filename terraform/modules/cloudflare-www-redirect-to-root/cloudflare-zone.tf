resource "cloudflare_zone" "main" {
  account_id = var.account_id
  zone       = var.domain
}

tem de ser data, pq eu não altero o zone, apenas uso o já criado e configurado manualmente