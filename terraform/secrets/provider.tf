terraform {
  required_version = ">= 1.5.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.15.0"
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

provider "aws" {
  region = var.aws_region_default
}

provider "github" {}

provider "sentry" {}
