locals {
  access_key = cloudflare_api_token.main.id
  secret_key = sha256(cloudflare_api_token.main.value)
}
