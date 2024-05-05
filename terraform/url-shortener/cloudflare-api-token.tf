resource "cloudflare_api_token" "main" {
  name = "${var.domain}-cf-d1-create"

  policy {
    permission_groups = [
      data.cloudflare_api_token_permission_groups.main.account["D1 Read"],
      data.cloudflare_api_token_permission_groups.main.account["D1 Write"]
    ]
    resources = {
      "com.cloudflare.api.account.${data.cloudflare_zone.main.account_id}" = "*"
    }
  }
}

