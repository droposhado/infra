terraform {
  required_version = ">= 1.5.4"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.33.0"
    }
    sentry = {
      source  = "jianyuan/sentry"
      version = "0.11.2"
    }
  }
}

provider "github" {}

provider "sentry" {}
