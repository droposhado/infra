terraform {
  backend "gcs" {
    prefix = "blog/terraform.tfstate"
  }
}
