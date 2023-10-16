module "vpc" {
  source     = "terraform-aws-modules/vpc/aws"
  version    = "5.1.2"
  create_vpc = true

  name             = "cigarra"
  cidr             = local.vpc_cidr
  azs              = local.azs
  private_subnets  = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 8, k)]
  public_subnets   = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 8, k + 4)]
  database_subnets = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 8, k + 8)]

  private_subnet_names = ["Private Subnet One", "Private Subnet Two"]
  # public_subnet_names omitted to show default name generation for all three subnets
  database_subnet_names = ["DB Subnet One"]

  create_database_subnet_group  = false
  manage_default_network_acl    = false
  manage_default_route_table    = false
  manage_default_security_group = false

  enable_dns_hostnames = true
  enable_dns_support   = true

  enable_nat_gateway = true
  single_nat_gateway = true


  tags = local.tags
}

# resource "aws_security_group" "rds" {
#   name_prefix = "${local.name}-rds"
#   description = "Allow PostgreSQL inbound traffic"
#   vpc_id      = module.vpc.vpc_id

#   ingress {
#     description = "TLS from VPC"
#     from_port   = 5432
#     to_port     = 5432
#     protocol    = "tcp"
#     cidr_blocks = [module.vpc.vpc_cidr_block]
#   }

#   tags = local.tags
# }
