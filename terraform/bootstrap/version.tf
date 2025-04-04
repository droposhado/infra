terraform {
  required_version = "~> 1.11.1"
  required_providers {
    aiven = {
      source  = "aiven/aiven"
      version = "4.19.1"
    }
    auth0 = {
      source  = "auth0/auth0"
      version = "1.8.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.45.0"
    }
    github = {
      source  = "integrations/github"
      version = "6.2.2"
    }
    google = {
      source  = "hashicorp/google"
      version = "5.34.0"
    }
    mailgun = {
      source  = "wgebis/mailgun"
      version = "0.7.6"
    }
    onepassword = {
      source  = "1Password/onepassword"
      version = "2.1.2"
    }
    sentry = {
      source  = "jianyuan/sentry"
      version = "0.12.3"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.5"
    }
  }
}

provider "aiven" {}

provider "auth0" {}

provider "cloudflare" {}

provider "github" {}

provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
}

provider "mailgun" {}

provider "sentry" {}

provider "tls" {}
