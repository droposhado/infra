module "aws-proxy-sabedoria" {
  source              = "droposhado/proxy-cloudflare/aws"
  version             = "1.2.3"
  stage               = "prod"
  fqdn                = "i.am.${var.domain}"
  proxy_url           = "https://${var.domain}"
  acm_certificate_arn = aws_acm_certificate.sabedoria.arn
}

module "migadu-email" {
  source  = "droposhado/migadu-mail/cloudflare"
  version = "1.0.0"
  zone_id = cloudflare_zone.main.id
  domain  = var.domain
}
