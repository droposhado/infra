terraform {
  required_version = "1.5.4"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.30.0"
    }
    restapi = {
      source  = "Mastercard/restapi"
      version = "1.19.1"
    }
  }
}

provider "cloudflare" {}

provider "restapi" {
  uri                  = "https://api.cloudflare.com/"
  write_returns_object = true
  debug                = true

  headers = {
    "Authorization" = "Bearer ${cloudflare_api_token.main.value}",
    # "Authorization" = "Bearer ",
    "Content-Type" = "application/json"
  }
}
