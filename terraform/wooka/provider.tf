terraform {
  required_version = "1.5.4"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.27.0"
    }
    sentry = {
      source  = "jianyuan/sentry"
      version = "0.12.3"
    }
  }
}

provider "google" {
  credentials = local.gcp_google_credentials
  project     = local.gcp_project_id
  region      = local.gcp_region
}

provider "sentry" {
  token = local.sentry_auth_token
}