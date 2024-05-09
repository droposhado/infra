resource "aws_s3_bucket_cors_configuration" "main" {
  provider = aws.cloudflare
  bucket   = aws_s3_bucket.main.id

  cors_rule {
    allowed_methods = ["GET"]
    allowed_origins = ["*"]
  }
}
