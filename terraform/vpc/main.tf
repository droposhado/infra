module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"

  name                 = "cigarra"
  cidr                 = "10.0.0.0/16"
  azs                  = local.aws_regions
  public_subnets       = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = local.tags
}

resource "aws_db_subnet_group" "cigarra" {
  name       = "cigarra"
  subnet_ids = module.vpc.public_subnets

  tags = local.tags
}

resource "aws_security_group" "cigarra" {
  name   = "cigarra"
  vpc_id = module.vpc.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = local.tags
}

