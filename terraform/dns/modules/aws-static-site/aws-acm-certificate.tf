resource "aws_acm_certificate" "main" {
  provider = aws.acm_issuer

  domain_name       = var.fqdn
  validation_method = "DNS"

  tags = var.tags

  lifecycle {
    create_before_destroy = true
  }
}
