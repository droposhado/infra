terraform {
  backend "gcs" {
    key = "blog/terraform.tfstate"
  }
}
