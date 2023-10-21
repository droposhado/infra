module "aws_route53" {
  source      = "./modules/aws-general"
  environment = var.environment
  domain      = var.domain
  records     = local.aws_records
}

module "blog_static_site" {
  source      = "./modules/aws-static-site"
  environment = var.environment
  domain      = var.domain
  fqdn        = ""
  bucket_id   = data.terraform_remote_state.storage.outputs.blog.id
  default_ttl = var.default_ttl

  depends_on = [
    module.aws_route53
  ]
}

# module "cloudflare" {
#   source     = "./modules/cloudflare-general"
#   account_id = var.account_id
#   domain     = var.domain
#   records    = local.cloudflare_records
# }

# module "aws-route53" {
#   source  = "./modules/maya"
#   name = 
#   bucket = 
# }
