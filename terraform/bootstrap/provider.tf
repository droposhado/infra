terraform {
  required_version = "1.5.4"
  required_providers {
    aiven = {
      source  = "aiven/aiven"
      version = "4.17.0"
    }
    b2 = {
      source  = "Backblaze/b2"
      version = "0.8.9"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.33.0"
    }
    github = {
      source  = "integrations/github"
      version = "6.2.1"
    }
    google = {
      source  = "hashicorp/google"
      version = "5.27.0"
    }
    mailgun = {
      source  = "wgebis/mailgun"
      version = "0.7.6"
    }
    sentry = {
      source  = "jianyuan/sentry"
      version = "0.13.1"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.5"
    }
  }
}

provider "aiven" {}

provider "b2" {}

provider "cloudflare" {}

provider "github" {}

provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
}

provider "mailgun" {}

provider "sentry" {}

provider "tls" {}
