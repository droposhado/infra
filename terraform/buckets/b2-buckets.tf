resource "b2_bucket" "sabedoria" {
  bucket_name = local.sabedoria_bucket_name
  bucket_type = "allPrivate"

  lifecycle {
    prevent_destroy = true
  }
}

resource "b2_bucket" "trakttv" {
  bucket_name = local.trakttv_bucket_name
  bucket_type = "allPrivate"

  lifecycle {
    prevent_destroy = true
  }
}
