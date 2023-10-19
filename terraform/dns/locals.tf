locals {
  tags = {
    workspace   = "dns"
    environment = var.environment
    region      = var.aws_region_default
  }
}
