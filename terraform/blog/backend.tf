terraform {
  backend "s3" {
    key    = "blog/terraform.tfstate"

    # required to use with b2
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
  }
}
