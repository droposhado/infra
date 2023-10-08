policy "restrict-all-vpc-traffic-acl-rules" {
  source            = "https://registry.terraform.io/v2/policies/hashicorp/aws-networking-terraform/1.0.2/policy/restrict-all-vpc-traffic-acl-rules.sentinel?checksum=sha256:b58e49dbd2e4795481c4af970aaf6dc883bdf5b6fb9cb47e331aa44883e8301d"
  enforcement_level = "advisory"
}

policy "deny-public-rdp-acl-rules" {
  source            = "https://registry.terraform.io/v2/policies/hashicorp/aws-networking-terraform/1.0.2/policy/deny-public-rdp-acl-rules.sentinel?checksum=sha256:b301e80bd612809aeeac263b5d4b5b22b9f84190da67216cc298a96652301086"
  enforcement_level = "advisory"
}

policy "deny-public-ssh-acl-rules" {
  source            = "https://registry.terraform.io/v2/policies/hashicorp/aws-networking-terraform/1.0.2/policy/deny-public-ssh-acl-rules.sentinel?checksum=sha256:b56a7869c9ddd2bece7de8d251de106e072407207247e6f94e001b6eba22c71b"
  enforcement_level = "advisory"
}

policy "rds-must-be-encrypted" {
  source            = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy/rds-must-be-encrypted.sentinel?checksum=sha256:5da1e10acd4d74e774105d01ded4db77dd4f3ef342c9ae9b5418e527006cd977"
  enforcement_level = "advisory"
}

policy "s3-should-have-encryption-enabled" {
  source            = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy/s3-should-have-encryption-enabled.sentinel?checksum=sha256:0b7d6e0e010e019c969101244d6de952da94590e98a7704af7a06f823cf3f1ce"
  enforcement_level = "advisory"
}

policy "elasticsearch-domains-encryption-must-be-enabled" {
  source            = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy/elasticsearch-domains-encryption-must-be-enabled.sentinel?checksum=sha256:8945518ff2a287a6eadda63a7e2fab2a6c3b48c546ca92f86638b70f42958dbb"
  enforcement_level = "advisory"
}

policy "ecs-service-should-not-have-public-ip" {
  source            = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy/ecs-service-should-not-have-public-ip.sentinel?checksum=sha256:0b7d6e0e010e019c969101244d6de952da94590e98a7704af7a06f823cf3f1ce"
  enforcement_level = "advisory"
}

policy "efs-filesystem-should-have-encryption-enabled" {
  source            = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy/efs-filesystem-should-have-encryption-enabled.sentinel?checksum=sha256:5e2d67fabdf0763028b88dbde8d6b3f52328a2d328b96381baad522bb48732b2"
  enforcement_level = "advisory"
}
