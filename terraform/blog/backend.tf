terraform {
  backend "s3" {
    key    = "blog/terraform.tfstate"

    # required to use with b2
    skip_requesting_account_id = true
    skip_credentials_validation = true
    skip_get_ec2_platforms = true
    skip_metadata_api_check = true
  }
}
