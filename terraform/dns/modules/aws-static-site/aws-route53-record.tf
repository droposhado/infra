resource "aws_route53_record" "validation" {
  for_each = {
    for dvo in aws_acm_certificate.main.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = var.default_ttl
  type            = each.value.type
  zone_id         = data.aws_route53_zone.main.zone_id
}

resource "aws_route53_record" "main" {
  zone_id = data.aws_route53_zone.main.id
  name    = var.fqdn
  type    = "A"

  alias {
    name                   = replace(aws_cloudfront_distribution.main.domain_name, "/[.]$/", "")
    zone_id                = aws_cloudfront_distribution.main.hosted_zone_id
    evaluate_target_health = true
  }
}
