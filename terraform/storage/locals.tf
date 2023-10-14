locals {
  domain_slug = replace(var.domain, ".", "-")
  sabedoria   = data.terraform_remote_state.seeds.outputs.sabedoria
  trakttv     = data.terraform_remote_state.seeds.outputs.trakttv

  blog_name = "blog-${var.domain_slug}"
  cdn_name  = "cdn-${var.domain_slug}"
  maps_name = "maps-${var.domain_slug}"

}
