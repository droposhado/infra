locals {
  domain_slug    = replace(var.domain, ".", "-")

  subdomain_slug_filter_1 = replace(var.subdomain, "@", "")
  subdomain_slug = replace(local.subdomain_slug_filter_1, ".", "-")

  fqdn         = "${var.subdomain}.${var.domain}"
  fqdn_slug      = var.subdomain == "@" || var.subdomain == "" ? "${local.domain_slug}" : "${local.subdomain_slug}-${local.domain_slug}"
}
