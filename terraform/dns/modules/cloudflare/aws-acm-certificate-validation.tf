resource "aws_acm_certificate_validation" "sabedoria" {
  provider = aws.acm_issuer

  certificate_arn         = aws_acm_certificate.sabedoria.arn
  validation_record_fqdns = [for record in cloudflare_record.sabedoria_proxy : record.hostname]

  depends_on = [
    aws_acm_certificate.sabedoria,
    cloudflare_record.sabedoria_proxy
  ]
}
