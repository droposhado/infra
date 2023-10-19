locals {
  records = [
    # {
    #   name    = "www"
    #   values  = "192.0.2.1"
    #   type    = "A"
    #   ttl     = 1
    #   proxied = true
    # },
    # {
    #   name    = "www"
    #   values  = "100::"
    #   type    = "AAAA"
    #   ttl     = 1
    #   proxied = true
    # },
    {
      name    = "deb"
      values  = "deb.droposhado.org.furyns.com"
      type    = "CNAME"
      ttl     = var.default_ttl
      proxied = false
    },
    {
      name    = "pypi"
      values  = "pypi.droposhado.org.furyns.com"
      type    = "CNAME"
      ttl     = var.default_ttl
      proxied = false
    },
    # {
    #   name    = "i.am"
    #   values  = var.domain
    #   type    = "CNAME"
    #   ttl     = var.default_ttl
    #   proxied = false
    # },
    {
      name    = "_dmarc"
      values  = "v=DMARC1; p=quarantine; adkim=s; aspf=s; rua=mailto:dmarcreport@${var.domain}; ruf=mailto:dmarcreport@${var.domain}; pct=100; fo=0:1:d:s;"
      type    = "TXT"
      ttl     = 3600
      proxied = false
    },
    {
      name    = "@"
      values  = "v=spf1 include:spf.migadu.com -all"
      type    = "TXT"
      ttl     = 3600
      proxied = false
    },
    {
      name    = "@"
      values  = "hosted-email-verify=vfxufmw7"
      type    = "TXT"
      ttl     = 3600
      proxied = false
    },
    {
      name    = "key1._domainkey"
      values  = "key1.${var.domain}._domainkey.migadu.com"
      type    = "CNAME"
      ttl     = 3600
      proxied = false
    },
    {
      name    = "key2._domainkey"
      values  = "key2.${var.domain}._domainkey.migadu.com"
      type    = "CNAME"
      ttl     = 3600
      proxied = false
    },
    {
      name    = "key3._domainkey"
      values  = "key3.${var.domain}._domainkey.migadu.com"
      type    = "CNAME"
      ttl     = 3600
      proxied = false
    },
    {
      # Thunderbird autoconfig mechanism
      name    = "autoconfig"
      values  = "autoconfig.migadu.com"
      type    = "CNAME"
      ttl     = 3600
      proxied = false
    },
    {
      name     = "@"
      values   = "aspmx1.migadu.com"
      type     = "MX"
      priority = 10
      ttl      = 3600
      proxied  = false
    },
    {
      name     = "@"
      values   = "aspmx2.migadu.com"
      type     = "MX"
      priority = 20
      ttl      = 3600
      proxied  = false
    }
  ]
}
