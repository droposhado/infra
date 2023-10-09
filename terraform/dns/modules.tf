module "cloudflare" {
  source     = "./modules/cloudflare"
  account_id = var.account_id
  domain     = var.domain
  records    = local.cloudflare_records
}

module "aws_route53" {
  source  = "./modules/aws"
  domain  = var.domain
  records = local.aws_records
}
