data "terraform_remote_state" "bootstrap" {
  backend = "gcs"

  config = {
    prefix = "bootstrap"
  }
}
