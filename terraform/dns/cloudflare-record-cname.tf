resource "cloudflare_record" "root" {
  zone_id = cloudflare_zone.droposhado_org.id
  name    = "@"
  value   = cloudflare_pages_project.droposhado_org.subdomain
  type    = "CNAME"

  # ttl must be set to 1 when `proxied` is true
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "cdn" {
  zone_id = cloudflare_zone.droposhado_org.id
  name    = "cdn"
  value   = cloudflare_pages_project.cdn_droposhado_org.subdomain
  type    = "CNAME"

  # ttl must be set to 1 when `proxied` is true
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "acme_status" {
  zone_id = cloudflare_zone.droposhado_org.id
  name    = replace(data.terraform_remote_state.apps.outputs.uptime_kuma.cert.droposhado_org.challenge, ".${var.domain}", "")
  value   = data.terraform_remote_state.apps.outputs.uptime_kuma.cert.droposhado_org.target
  type    = "CNAME"
  ttl     = 3600
  proxied = false
}

resource "cloudflare_record" "deb" {
  zone_id = cloudflare_zone.droposhado_org.id
  name    = "deb"
  value   = "deb.droposhado.org.furyns.com"
  type    = "CNAME"
  ttl     = 3600
  proxied = false
}

resource "cloudflare_record" "pypi" {
  zone_id = cloudflare_zone.droposhado_org.id
  name    = "pypi"
  value   = "pypi.droposhado.org.furyns.com"
  type    = "CNAME"
  ttl     = 3600
  proxied = false
}

resource "cloudflare_record" "sabedoria" {
  zone_id = cloudflare_zone.droposhado_org.id
  name    = "i.am"
  value   = module.aws-proxy-sabedoria.domain_name
  type    = "CNAME"
  ttl     = 3600
  proxied = false
}

