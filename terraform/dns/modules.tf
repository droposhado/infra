module "aws_route53" {
  source      = "./modules/aws-general"
  environment = var.environment
  domain      = var.domain
  records     = local.aws_records
}

module "cloudflare" {
  source     = "./modules/cloudflare-general"
  account_id = var.account_id
  domain     = var.domain
  records    = local.cloudflare_records
}

# module "aws-route53" {
#   source  = "./modules/maya"
#   name = 
#   bucket = 
# }
