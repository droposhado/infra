data "cloudflare_zone" "main" {
  name = var.domain
}

data "cloudflare_user" "me" {}
