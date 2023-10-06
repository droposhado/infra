locals {
  aws_regions = split(",", var.aws_regions)

  tags = {
    workspace   = "vpc"
    environment = var.environment
    region      = provider.aws.region
    regions     = var.aws_regions
  }
}
