module "function_name" {
  source    = "../modules/name-gen"
  length    = 8
  uppercase = false
  keepers = {
    bucket = var.gcs_bucket
  }
}
