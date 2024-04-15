resource "b2_bucket" "backup" {
  bucket_name = local.backup_bucket_name
  bucket_type = "allPrivate"
}
