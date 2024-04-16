terraform {
  required_version = "1.5.4"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.29.0"
    }
    github = {
      source  = "integrations/github"
      version = "5.33.0"
    }

  }
}

provider "github" {
  token = local.github_token
}

provider "cloudflare" {
  api_token = local.cloudflare_api_token
}
