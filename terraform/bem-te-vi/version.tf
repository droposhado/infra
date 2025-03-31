terraform {
  required_version = "~> 1.11.1"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.30.0"
    }
    sentry = {
      source  = "jianyuan/sentry"
      version = "0.13.1"

    }
  }
}

provider "cloudflare" {}

provider "sentry" {}
