resource "cloudflare_record" "sabedoria_proxy" {
  for_each = {
    for dvo in aws_acm_certificate.sabedoria.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  zone_id = cloudflare_zone.main.id
  name    = each.value.name
  value   = each.value.record
  type    = each.value.type
  ttl     = 3600
  proxied = false

  depends_on = [aws_acm_certificate.sabedoria]
}
