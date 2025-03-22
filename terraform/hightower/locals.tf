locals {
  allowed_ip_range = data.github_ip_ranges.main.actions
  cloudflare_token = cloudflare_api_token.main.value
}
