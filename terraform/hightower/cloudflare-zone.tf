data "cloudflare_zone" "main" {
  name = var.domain
}

# output "zone" {
#   value = data.cloudflare_zone.main
# }


data "cloudflare_user" "me" {}

output "account" {
  value = data.cloudflare_user.me
}