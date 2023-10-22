module "maya_backup" {
  source                  = "./modules/aws-bucket"
  acl                     = "private"
  block_public_acls       = true
  block_public_policy     = true
  bucket_name             = local.maya.name
  enable_cors             = false
  ignore_public_acls      = true
  restrict_public_buckets = true
  tags                    = local.tags
  versioning              = "Enabled"
}

module "sabedoria_backup" {
  source                  = "./modules/aws-bucket"
  acl                     = "private"
  block_public_acls       = true
  block_public_policy     = true
  bucket_name             = local.sabedoria.name
  enable_cors             = false
  ignore_public_acls      = true
  restrict_public_buckets = true
  tags                    = local.tags
  versioning              = "Enabled"
}
