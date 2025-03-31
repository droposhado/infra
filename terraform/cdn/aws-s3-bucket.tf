resource "aws_s3_bucket" "main" {
  provider = aws.cloudflare
  bucket   = module.dotroot.fqdn_slug
}
