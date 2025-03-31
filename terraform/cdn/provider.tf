terraform {
  required_version = "~> 1.11.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.93.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.45.0"
    }
  }
}

provider "aws" {
  alias                       = "cloudflare"
  region                      = "us-east-1"
  access_key                  = local.access_key
  secret_key                  = local.secret_key
  skip_credentials_validation = true
  skip_region_validation      = true
  skip_requesting_account_id  = true

  endpoints {
    s3 = "https://${data.cloudflare_zone.main.account_id}.r2.cloudflarestorage.com"
  }
}
