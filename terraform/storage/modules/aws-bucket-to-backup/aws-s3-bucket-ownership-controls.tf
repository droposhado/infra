resource "aws_s3_bucket_ownership_controls" "sabedoria" {
  bucket = aws_s3_bucket.sabedoria.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
