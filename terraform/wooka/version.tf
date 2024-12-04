terraform {
  required_version = "1.5.4"
  required_providers {
    doppler = {
      source  = "DopplerHQ/doppler"
      version = "1.12.0"
    }
    sentry = {
      source  = "jianyuan/sentry"
      version = "0.13.1"
    }
  }
}

provider "doppler" {}

provider "sentry" {}
