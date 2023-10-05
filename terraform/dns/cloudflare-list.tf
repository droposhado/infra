resource "cloudflare_list" "www" {
  account_id  = var.account_id
  name        = "www_redirect"
  description = "list to configure www redirect to apex"
  kind        = "redirect"
}

resource "cloudflare_list_item" "www" {
  account_id = var.account_id
  list_id    = cloudflare_list.www.id

  redirect {
    source_url            = "www.${var.domain}/"
    target_url            = "https://${var.domain}/"
    include_subdomains    = "disabled"
    subpath_matching      = "enabled"
    status_code           = 301
    preserve_query_string = "enabled"
    preserve_path_suffix  = "enabled"

  }
}
