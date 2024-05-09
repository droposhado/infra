resource "cloudflare_api_token" "main" {
  name = "${var.domain}-cdn-setup"

  policy {
    permission_groups = [
      data.cloudflare_api_token_permission_groups.main.account["Workers R2 Storage Read"],
      data.cloudflare_api_token_permission_groups.main.account["Workers R2 Storage Write"]
    ]
    resources = {
      "com.cloudflare.api.account.${data.cloudflare_zone.main.account_id}" = "*"
    }
  }

  # condition {
  #   request_ip {
  #     in = var.allowed_ip_range
  #   }
  # }
}

