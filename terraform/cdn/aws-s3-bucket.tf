resource "aws_s3_bucket" "main" {
  provider = aws.cloudflare
  bucket   = local.cdn_name
}
