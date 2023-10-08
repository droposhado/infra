locals {
  domain_slug = replace(var.domain, ".", "-")
  sabedoria   = data.terraform_remote_state.seeds.outputs.sabedoria
  trakttv     = data.terraform_remote_state.seeds.outputs.trakttv

  tags = {
    workspace   = "buckets"
    environment = var.environment
    region      = var.aws_region_default
  }
}
