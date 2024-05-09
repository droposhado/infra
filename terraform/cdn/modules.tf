module "cdn_name" {
  source    = "../modules/name-gen"
  length    = 16
  uppercase = false
  keepers = {
    bucket = var.gcs_bucket
  }
}
