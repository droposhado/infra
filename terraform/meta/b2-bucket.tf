resource "b2_bucket" "main" {
  bucket_name = "${local.domain_slug}-state"
  bucket_type = "allPrivate"
}