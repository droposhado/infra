terraform {
  required_version = "1.5.4"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.27.0"
    }
    sentry = {
      source  = "jianyuan/sentry"
      version = "0.12.2"
    }
  }
}

provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
}

provider "sentry" {}
