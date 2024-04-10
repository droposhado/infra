terraform {
  required_version = ">= 1.5.4"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.29.0"
    }
  }
}
provider "cloudflare" {}