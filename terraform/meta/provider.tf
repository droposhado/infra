terraform {
  required_version = "~>1.5.4"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.49.1"
    }
  }
}

provider "github" {
  token = var.github_token
}

provider "tfe" {}
