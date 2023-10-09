resource "aws_route53_record" "main" {
  zone_id  = aws_route53_zone.main.zone_id
  for_each = var.records

  name    = each.value.name
  type    = each.value.type
  ttl     = each.value.ttl
  records = each.value.values
}
