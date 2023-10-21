locals {
  cloudflare_records = [
    {
      name    = "www"
      value   = "192.0.2.1"
      type    = "A"
      ttl     = 1
      proxied = true
    },
    {
      name    = "www"
      value   = "100::"
      type    = "AAAA"
      ttl     = 1
      proxied = true
    },
    {
      name    = "deb"
      value   = "deb.droposhado.org.furyns.com"
      type    = "CNAME"
      ttl     = var.default_ttl
      proxied = false
    },
    {
      name    = "pypi"
      value   = "pypi.droposhado.org.furyns.com"
      type    = "CNAME"
      ttl     = var.default_ttl
      proxied = false
    },
    # {
    #   name    = "i.am"
    #   value  = var.domain
    #   type    = "CNAME"
    #   ttl     = var.default_ttl
    #   proxied = false
    # },
    {
      name    = "_dmarc"
      value   = "v=DMARC1; p=quarantine; adkim=s; aspf=s; rua=mailto:dmarcreport@${var.domain}; ruf=mailto:dmarcreport@${var.domain}; pct=100; fo=0:1:d:s;"
      type    = "TXT"
      ttl     = 3600
      proxied = false
    },
    {
      name    = "@"
      value   = "v=spf1 include:spf.migadu.com -all"
      type    = "TXT"
      ttl     = 3600
      proxied = false
    },
    {
      name    = "@"
      value   = "hosted-email-verify=vfxufmw7"
      type    = "TXT"
      ttl     = 3600
      proxied = false
    },
    {
      name    = "key1._domainkey"
      value   = "key1.${var.domain}._domainkey.migadu.com"
      type    = "CNAME"
      ttl     = 3600
      proxied = false
    },
    {
      name    = "key2._domainkey"
      value   = "key2.${var.domain}._domainkey.migadu.com"
      type    = "CNAME"
      ttl     = 3600
      proxied = false
    },
    {
      name    = "key3._domainkey"
      value   = "key3.${var.domain}._domainkey.migadu.com"
      type    = "CNAME"
      ttl     = 3600
      proxied = false
    },
    {
      # Thunderbird autoconfig mechanism
      name    = "autoconfig"
      value   = "autoconfig.migadu.com"
      type    = "CNAME"
      ttl     = 3600
      proxied = false

    },
    {
      name     = "@"
      value    = "aspmx1.migadu.com"
      type     = "MX"
      priority = 10
      ttl      = 3600
      proxied  = false
    },
    {
      name     = "@"
      value    = "aspmx2.migadu.com"
      type     = "MX"
      priority = 20
      ttl      = 3600
      proxied  = false
    }
  ]
}
