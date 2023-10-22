resource "aws_s3_bucket_acl" "sabedoria" {
  depends_on = [aws_s3_bucket_ownership_controls.sabedoria]

  bucket = aws_s3_bucket.sabedoria.id
  acl    = "private"
}
