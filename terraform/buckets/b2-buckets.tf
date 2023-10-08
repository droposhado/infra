resource "b2_bucket" "sabedoria" {
  bucket_name = local.sabedoria.name
  bucket_type = "allPrivate"

  lifecycle {
    prevent_destroy = false
  }
}

resource "b2_bucket" "trakttv" {
  bucket_name = local.trakttv.name
  bucket_type = "allPrivate"

  lifecycle {
    prevent_destroy = false
  }
}
