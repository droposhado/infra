resource "cloudflare_record" "smtp" {

  for_each = {
    for record in mailgun_domain.main.sending_records_set : record.id => {
      type  = record.record_type
      name  = record.name
      value = record.value
    }
  }

  type    = each.value.type
  name    = each.value.name
  value   = each.value.value
  zone_id = var.cloudflare_zone_id
  proxied = false

  depends_on = [mailgun_domain.main]
}