terraform {
  required_version = "~>1.5.4"
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.49.1"
    }
  }
}

provider "tfe" {}
