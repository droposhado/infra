resource "aws_acm_certificate" "sabedoria" {
  provider = aws.acm_issuer

  domain_name       = "i.am.${var.domain}"
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}
