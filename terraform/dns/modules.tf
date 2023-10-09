module "aws_route53" {
  source  = "./modules/aws"
  domain  = var.domain
  records = local.aws_records
}

#module "cloudflare" {
#  source     = "./modules/cloudflare-ns"
#  account_id = var.account_id
#  domain     = var.domain
#  ns         = module.aws_route53.ns
#}
