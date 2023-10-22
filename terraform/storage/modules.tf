module "blog_static_site" {
  source                  = "./modules/aws-bucket"
  acl                     = "public-read"
  block_public_acls       = false
  block_public_policy     = false
  bucket_name             = local.blog_name
  enable_cors             = false
  ignore_public_acls      = false
  restrict_public_buckets = false
  tags                    = local.tags
  versioning              = "Enabled"
}
