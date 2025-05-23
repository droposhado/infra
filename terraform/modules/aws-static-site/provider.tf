terraform {
  required_version = "~> 1.11.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.15.0"
    }
  }
}

provider "aws" {
  # Cloudfront distribution needs a certificate generated or imported
  # on us-east-1
  # https://docs.aws.amazon.com/acm/latest/userguide/acm-regions.html

  alias  = "acm_issuer"
  region = "us-east-1"
}
