module "aws_route53" {
  source      = "./modules/aws"
  environment = var.environment
  domain      = var.domain
  records     = local.aws_records
}

module "cloudflare" {
  source     = "./modules/cloudflare-ns"
  account_id = var.account_id
  domain     = var.domain
  ns         = module.aws_route53.ns
}

# module "aws-route53" {
#   source  = "./modules/maya"
#   name = 
#   bucket = 
# }
