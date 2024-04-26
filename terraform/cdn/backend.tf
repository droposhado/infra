terraform {
  backend "s3" {
    key    = "cdn/terraform.tfstate"
  }
}

