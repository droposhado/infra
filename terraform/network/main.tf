module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"

  name                         = "cigarra"
  cidr                         = "10.0.0.0/16"
  azs                          = local.azs
  public_subnets               = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  create_vpc                   = true
  enable_dns_hostnames         = true
  enable_dns_support           = true
  default_network_acl_egress   = []
  default_network_acl_ingress  = []
  create_database_subnet_group = true
  tags                         = local.tags


  manage_default_network_acl    = false
  manage_default_route_table    = false
  manage_default_security_group = false

}

resource "aws_db_subnet_group" "cigarra" {
  name       = "cigarra"
  subnet_ids = module.vpc.public_subnets

  tags = local.tags
}

resource "aws_security_group" "cigarra" {
  name   = "cigarra"
  vpc_id = module.vpc.vpc_id

  tags = local.tags
}






# [
#     {
#       rule_number = 100
#       rule_action = "allow"
#       from_port   = 0
#       to_port     = 0
#       protocol    = "-1"
#       cidr_block  = "0.0.0.0/0"
#     },
#   ]
