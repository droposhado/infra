terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.35.0"
    }
    mailgun = {
      source  = "wgebis/mailgun"
      version = "0.7.6"
    }
  }
}
