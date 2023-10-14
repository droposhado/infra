locals {
  domain_slug = replace(var.domain, ".", "-")
  sabedoria   = data.terraform_remote_state.seeds.outputs.sabedoria

  blog_name = "blog-${local.domain_slug}"
  cdn_name  = "cdn-${local.domain_slug}"
  maps_name = "maps-${local.domain_slug}"
  wiki_name = "wiki-${local.domain_slug}"

  tags = {
    workspace   = "storage"
    environment = var.environment
    region      = var.aws_region_default
  }
}
