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
  fqdn        = var.domain
  bucket_id   = data.terraform_remote_state.storage.outputs.blog.id
  default_ttl = var.default_ttl

  tags = local.tags
}

module "cdn_static_site" {
  source      = "./modules/aws-static-site"
  environment = var.environment
  domain      = var.domain
  fqdn        = "cdn.${var.domain}"
  bucket_id   = data.terraform_remote_state.storage.outputs.cdn.id
  default_ttl = var.default_ttl

  tags = local.tags
}

module "maps_static_site" {
  source      = "./modules/aws-static-site"
  environment = var.environment
  domain      = var.domain
  fqdn        = "maps.${var.domain}"
  bucket_id   = data.terraform_remote_state.storage.outputs.maps.id
  default_ttl = var.default_ttl

  tags = local.tags
}

module "wiki_static_site" {
  source      = "./modules/aws-static-site"
  environment = var.environment
  domain      = var.domain
  fqdn        = "wiki.${var.domain}"
  bucket_id   = data.terraform_remote_state.storage.outputs.wiki.id
  default_ttl = var.default_ttl

  tags = local.tags
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
