terraform {
  required_version = ">= 1.5.4"
  required_providers {
    b2 = {
      source  = "Backblaze/b2"
      version = "0.8.4"
    }
    github = {
      source  = "integrations/github"
      version = "5.33.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}


provider "b2" {}

provider "github" {}

provider "random" {}
