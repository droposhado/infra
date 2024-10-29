terraform {
  required_version = "1.5.4"
  required_providers {
    aiven = {
      source  = "aiven/aiven"
      version = "4.19.1"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.35.0"
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
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
      version = "1.21.1"
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

provider "cloudflare" {}

provider "github" {}

provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
}

provider "mailgun" {}

provider "mongodbatlas" {}

provider "sentry" {}

provider "tls" {}
