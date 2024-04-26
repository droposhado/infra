module "bucket" {
  source                  = "../modules/aws-bucket"
  acl                     = "public-read"
  block_public_acls       = false
  block_public_policy     = false
  bucket_name             = local.cdn_name
  enable_cors             = true
  ignore_public_acls      = false
  restrict_public_buckets = false
  tags                    = local.tags
  versioning              = "Enabled"
}

module "static_site" {
  source      = "../modules/aws-static-site"
  environment = var.environment
  domain      = var.domain
  fqdn        = "cdn.${var.domain}"
  bucket_id   = module.bucket.bucket.id
  default_ttl = var.default_ttl

  tags = local.tags
}