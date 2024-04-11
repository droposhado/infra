resource "b2_application_key" "state" {
  key_name     = local.state_bucket_name
  bucket_id    = b2_bucket.state.bucket_id
  capabilities = 
    "listFiles",
    "readFiles",
    "writeFiles"
  ]
}