terraform {
  backend "s3" {
    key    = "sabedoria/terraform.tfstate"
  }
}
