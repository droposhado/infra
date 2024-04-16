resource "cloudflare_record" "sending" {
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

resource "cloudflare_record" "receiving" {
  for_each = {
    for record in mailgun_domain.main.receiving_records_set : record.id => {
      type     = record.record_type
      priority = record.priority
      value    = record.value
    }
  }

  type     = each.value.type
  name     = "${var.subdomain}.${var.domain}"
  value    = each.value.value
  priority = each.value.priority
  zone_id  = var.cloudflare_zone_id
  proxied  = false

  depends_on = [mailgun_domain.main]
}