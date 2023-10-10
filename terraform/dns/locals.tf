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
    {
      name    = "i.am"
      value   = var.domain
      type    = "CNAME"
      ttl     = var.default_ttl
      proxied = false

    }
  ]

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
      name   = "i.am"
      values = [var.domain]
      type   = "CNAME"
      ttl    = var.default_ttl

    }
  ]


  tags = {
    workspace   = "dns"
    environment = var.environment
    region      = var.aws_region_default
  }
}
