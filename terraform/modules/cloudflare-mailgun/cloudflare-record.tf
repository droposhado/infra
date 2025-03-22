resource "cloudflare_record" "sending" {
  for_each = {
    for record in mailgun_domain.main.sending_records_set : record.id => {
      type    = record.record_type
      name    = record.name
      content = record.value
    }
  }

  type    = each.value.type
  name    = each.value.name
  content = each.value.content
  zone_id = var.cloudflare_zone_id
  proxied = false

  depends_on = [mailgun_domain.main]
}

resource "cloudflare_record" "receiving" {
  for_each = {
    for record in mailgun_domain.main.receiving_records_set : record.id => {
      type     = record.record_type
      priority = record.priority
      content  = record.value
    }
  }

  type     = each.value.type
  name     = "${var.subdomain}.${var.domain}"
  content  = each.value.content
  priority = each.value.priority
  zone_id  = var.cloudflare_zone_id
  proxied  = false

  depends_on = [mailgun_domain.main]
}