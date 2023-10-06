terraform {
  required_version = ">= 1.5.4"
  required_providers {
    b2 = {
      source  = "Backblaze/b2"
      version = "0.8.4"
    }
  }
}

provider "b2" {}
