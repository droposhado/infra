resource "b2_bucket" "main" {
  bucket_name = local.state_bucket_name
  bucket_type = "allPrivate"
}