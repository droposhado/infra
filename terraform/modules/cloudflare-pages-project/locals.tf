locals {
  domain_slug    = replace(var.domain, ".", "-")
  subdomain_slug = replace(var.subdomain, "@", "")
}