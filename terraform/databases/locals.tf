locals {

  pg_cluster = data.terraform_remote_state.seeds.outputs.pg_cluster

  vpc = data.terraform_remote_state.network.outputs.vpc

  sabedoria = data.terraform_remote_state.seeds.outputs.sabedoria

  tags = {
    workspace   = "databases"
    environment = var.environment
    region      = var.aws_region_default
  }
}
