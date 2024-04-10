terraform {
  required_version = "1.5.4"
  required_providers {
    aiven = {
      source  = "aiven/aiven"
      version = "4.15.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.29.0"
    }
    github = {
      source  = "integrations/github"
      version = "5.33.0"
    }
    sentry = {
      source  = "jianyuan/sentry"
      version = "0.12.2"
    }
  }
}

provider "aiven" {}

provider "github" {
  token = var.github_token
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

provider "sentry" {
  token = var.sentry_auth_token
}