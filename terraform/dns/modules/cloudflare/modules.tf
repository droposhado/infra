module "aws-proxy-sabedoria" {
  source              = "droposhado/proxy-cloudflare/aws"
  version             = "1.2.3"
  stage               = "prod"
  fqdn                = "i.am.${var.domain}"
  proxy_url           = "https://${var.domain}"
  acm_certificate_arn = aws_acm_certificate.sabedoria.arn
}
