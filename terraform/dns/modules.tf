module "aws-proxy-sabedoria" {
  source              = "droposhado/proxy-cloudflare/aws"
  version             = "1.2.3"
  stage               = "prod"
  fqdn                = "i.am.${var.domain}"
  proxy_url           = data.terraform_remote_state.k8s.outputs.endpoints.sabedoria
  acm_certificate_arn = aws_acm_certificate.sabedoria.arn

}

module "migadu-email" {
  source  = "droposhado/migadu-mail/cloudflare"
  version = "1.0.0"
  zone_id = cloudflare_zone.droposhado_org.id
  domain  = var.domain
}
