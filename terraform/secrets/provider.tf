terraform {
  required_version = ">= 1.5.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.15.0"
    }
    b2 = {
      source  = "Backblaze/b2"
      version = "0.8.4"
    }
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

provider "b2" {}

provider "github" {}

provider "sentry" {}
