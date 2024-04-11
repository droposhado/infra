resource "b2_bucket" "backup" {
  bucket_name = local.backup_bucket_name
  bucket_type = "allPrivate"
}

resource "b2_bucket" "state" {
  bucket_name = local.state_bucket_name
  bucket_type = "allPrivate"
}
