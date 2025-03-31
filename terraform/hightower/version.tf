terraform {
  required_version = "~> 1.11.1"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.45.0"
    }
    github = {
      source  = "integrations/github"
      version = "6.2.1"
    }
  }
}

provider "github" {}

provider "cloudflare" {}
