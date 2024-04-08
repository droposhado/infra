resource "cloudflare_ruleset" "www" {
  account_id  = var.account_id
  name        = "www redirect ruleset"
  description = "Redirect ruleset"
  kind        = "root"
  phase       = "http_request_redirect"

  rules {
    action = "redirect"
    action_parameters {
      from_list {
        name = cloudflare_list.www.name
        key  = "http.request.full_uri"
      }
    }
    expression  = "http.request.full_uri in ${"$"}${cloudflare_list.www.name}"
    description = "Apply redirects from www to apex domain"
    enabled     = true
  }
}
