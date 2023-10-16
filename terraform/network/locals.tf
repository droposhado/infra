locals {
  azs      = data.aws_availability_zones.available.names
  vpc_cidr = "10.0.0.0/16"
  tags = {
    workspace   = "vpc"
    environment = var.environment
    region      = var.aws_region_default
  }
}
