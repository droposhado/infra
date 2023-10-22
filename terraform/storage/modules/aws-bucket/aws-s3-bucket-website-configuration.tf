resource "aws_s3_bucket_website_configuration" "main" {
  bucket = aws_s3_bucket.main.id

  index_document {
    suffix = var.index_document
  }

  error_document {
    key = var.error_document
  }
}
