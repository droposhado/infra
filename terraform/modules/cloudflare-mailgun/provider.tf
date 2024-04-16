terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.29.0"
    }
    mailgun = {
      source = "wgebis/mailgun"
      version = "0.7.5"
    }
  }
}
