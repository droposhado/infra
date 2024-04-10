terraform {
  required_version = ">= 1.5.4"
  required_providers {
    sentry = {
      source  = "jianyuan/sentry"
      version = "0.12.2"
    }
  }
}
provider "sentry" {}
