terraform {
  required_version = "1.5.4"
  required_providers {
    render = {
      source  = "render-oss/render"
      version = "1.3.2"
    }
    sentry = {
      source  = "jianyuan/sentry"
      version = "0.13.1"
    }
  }
}

provider "render" {}

provider "sentry" {}
