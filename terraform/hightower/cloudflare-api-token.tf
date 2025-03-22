resource "cloudflare_api_token" "main" {
  name = "${var.domain}-hightower-gh-actions-deploy"

  policy {
    permission_groups = [
      data.cloudflare_api_token_permission_groups.main.account["Pages Read"],
      data.cloudflare_api_token_permission_groups.main.account["Pages Write"]
    ]
    resources = {
      "com.cloudflare.api.account.${data.cloudflare_zone.main.account_id}" = "*"
    }
  }

  policy {
    permission_groups = [
      # account
      data.cloudflare_api_token_permission_groups.main.account["Workers Scripts Read"],
      data.cloudflare_api_token_permission_groups.main.account["Workers Scripts Write"]
    ]
    resources = {
      "com.cloudflare.api.account.${data.cloudflare_zone.main.account_id}" = "*"
    }
  }

  policy {
    permission_groups = [
      data.cloudflare_api_token_permission_groups.main.user["Memberships Read"],
      data.cloudflare_api_token_permission_groups.main.user["User Details Read"]
    ]
    resources = {
      "com.cloudflare.api.user.${data.cloudflare_user.me.id}" = "*"
    }
  }

  policy {
    permission_groups = [
      data.cloudflare_api_token_permission_groups.main.zone["Workers Routes Read"],
      data.cloudflare_api_token_permission_groups.main.zone["Workers Routes Write"]
    ]
    resources = {
      "com.cloudflare.api.account.zone.*" = "*"
    }
  }

  condition {
    request_ip {
      in = local.allowed_ip_range
    }
  }
}

