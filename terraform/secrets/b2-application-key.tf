resource "b2_application_key" "sabedoria" {
  key_name  = "gh-actions-${local.sabedoria.name}"
  bucket_id = b2_bucket.sabedoria.bucket_id
  capabilities = [
    "listFiles",
    "readFiles",
    "writeFiles"
  ]
}

resource "b2_application_key" "trakttv" {
  key_name  = "gh-actions-${local.trakttv.name}"
  bucket_id = b2_bucket.trakttv.bucket_id
  capabilities = [
    "listFiles",
    "readFiles",
    "writeFiles"
  ]
}
