locals {
  aws_regions = split(",", var.aws_regions)

  tags = {
    workspace   = "vpc"
    environment = var.environment
    region      = var.aws_region_default
    regions     = var.aws_regions
  }
}
