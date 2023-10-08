locals {
  azs = data.aws_availability_zones.available.names

  tags = {
    workspace   = "vpc"
    environment = var.environment
    region      = var.aws_region_default
  }
}
