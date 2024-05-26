resource "aws_s3_bucket_versioning" "main" {
  provider = aws.cloudflare

  bucket = aws_s3_bucket.main.id
  versioning_configuration {
    status = "Enabled"
  }
}
