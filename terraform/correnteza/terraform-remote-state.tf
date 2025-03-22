data "terraform_remote_state" "bootstrap" {
  backend = "gcs"

  config = {
    bucket = var.gcs_bucket
    prefix = "bootstrap"
  }
}
