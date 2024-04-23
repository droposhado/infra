resource "b2_application_key" "backup" {
  key_name  = local.backup_bucket_name
  bucket_id = b2_bucket.backup.bucket_id
  capabilities = [
    "listFiles",
    "readFiles",
    "writeFiles",
    "deleteFiles"
  ]
}
