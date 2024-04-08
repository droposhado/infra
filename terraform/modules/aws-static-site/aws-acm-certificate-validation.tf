resource "aws_acm_certificate_validation" "main" {
  provider = aws.acm_issuer

  certificate_arn         = aws_acm_certificate.main.arn
  validation_record_fqdns = [for record in aws_route53_record.validation : record.fqdn]
}
