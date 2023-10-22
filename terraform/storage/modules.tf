module "blog_static_site" {
  source      = "./modules/aws-bucket"
  acl         = "public-read"
  bucket_name = local.blog_name
  enable_cors = false
  tags        = local.tags
  versioning  = "Enabled"
}
