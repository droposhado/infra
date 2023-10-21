locals {
  aws_records = [
    {
      name   = "deb"
      values = ["deb.droposhado.org.furyns.com"]
      type   = "CNAME"
      ttl    = var.default_ttl
    },
    {
      name   = "pypi"
      values = ["pypi.droposhado.org.furyns.com"]
      type   = "CNAME"
      ttl    = var.default_ttl
    },
    {
      name = "_dmarc"
      values = [
        "v=DMARC1; p=quarantine; adkim=s; aspf=s; rua=mailto:dmarcreport@${var.domain}; ruf=mailto:dmarcreport@${var.domain}; pct=100; fo=0:1:d:s;"
      ]
      type = "TXT"
      ttl  = var.default_ttl
    },
    {
      name = var.domain
      values = [
        "v=spf1 include:spf.migadu.com -all",
        "hosted-email-verify=vfxufmw7"
      ]
      type = "TXT"
      ttl  = var.default_ttl
    },
    {
      name   = "key1._domainkey"
      values = ["key1.${var.domain}._domainkey.migadu.com"]
      type   = "CNAME"
      ttl    = var.default_ttl
    },
    {
      name   = "key2._domainkey"
      values = ["key2.${var.domain}._domainkey.migadu.com"]
      type   = "CNAME"
      ttl    = var.default_ttl
    },
    {
      name   = "key3._domainkey"
      values = ["key3.${var.domain}._domainkey.migadu.com"]
      type   = "CNAME"
      ttl    = var.default_ttl
    },
    {
      # Thunderbird autoconfig mechanism
      name   = "autoconfig"
      values = ["autoconfig.migadu.com"]
      type   = "CNAME"
      ttl    = var.default_ttl

    },
    {
      name = var.domain
      values = [
        "10 aspmx1.migadu.com",
        "20 aspmx2.migadu.com"
      ]
      type = "MX"
      ttl  = var.default_ttl
    }
  ]
}
