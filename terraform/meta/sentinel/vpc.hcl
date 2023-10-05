policy "ecs-service-should-not-have-public-ip" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy/ecs-service-should-not-have-public-ip.sentinel?checksum=sha256:0b7d6e0e010e019c969101244d6de952da94590e98a7704af7a06f823cf3f1ce"
  enforcement_level = "advisory"
}

policy "ebs-volume-must-be-encrypted" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy/ebs-volume-must-be-encrypted.sentinel?checksum=sha256:c7ad02e59b3214ea94770c82ca8c6443ad0e8e0ba24652ebb52fc6e5556e2e61"
  enforcement_level = "advisory"
}

policy "cloudtrail-encryption-must-be-enabled" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy/cloudtrail-encryption-must-be-enabled.sentinel?checksum=sha256:274a8b6a3b18d9f5acacda195c2cff39351c5b3a1283ed2f1192f143b6d213ac"
  enforcement_level = "advisory"
}

policy "s3-should-have-encryption-enabled" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy/s3-should-have-encryption-enabled.sentinel?checksum=sha256:0b7d6e0e010e019c969101244d6de952da94590e98a7704af7a06f823cf3f1ce"
  enforcement_level = "advisory"
}

policy "rds-must-be-encrypted" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy/rds-must-be-encrypted.sentinel?checksum=sha256:5da1e10acd4d74e774105d01ded4db77dd4f3ef342c9ae9b5418e527006cd977"
  enforcement_level = "advisory"
}

policy "elasticsearch-domains-encryption-must-be-enabled" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy/elasticsearch-domains-encryption-must-be-enabled.sentinel?checksum=sha256:8945518ff2a287a6eadda63a7e2fab2a6c3b48c546ca92f86638b70f42958dbb"
  enforcement_level = "advisory"
}

policy "efs-filesystem-should-have-encryption-enabled" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy/efs-filesystem-should-have-encryption-enabled.sentinel?checksum=sha256:5e2d67fabdf0763028b88dbde8d6b3f52328a2d328b96381baad522bb48732b2"
  enforcement_level = "advisory"
}

module "tfplan-functions" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy-module/tfplan-functions.sentinel?checksum=sha256:b7590b6f1729e957cd2d2fec048babcd5f5b4a3bbe90dba14eb8bb5da024ff66"
}

module "tfstate-functions" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy-module/tfstate-functions.sentinel?checksum=sha256:53eeec20c431053b9402e565f66a2aaba415f26a59ab202e128e88b4a392954f"
}

module "tfconfig-functions" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy-module/tfconfig-functions.sentinel?checksum=sha256:dd41e7150e1189676f37bbf5c3aeae7791cc9793d921f19ba4f7bcbd42e21cb9"
}

module "aws-functions" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy-module/aws-functions.sentinel?checksum=sha256:b6f0301884456544f2d5ae708918e08419fe4e9b8abee65314a109497f2ef725"
}

policy "restrict-all-vpc-traffic-acl-rules" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/aws-networking-terraform/1.0.2/policy/restrict-all-vpc-traffic-acl-rules.sentinel?checksum=sha256:b58e49dbd2e4795481c4af970aaf6dc883bdf5b6fb9cb47e331aa44883e8301d"
  enforcement_level = "advisory"
}

policy "deny-public-rdp-acl-rules" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/aws-networking-terraform/1.0.2/policy/deny-public-rdp-acl-rules.sentinel?checksum=sha256:b301e80bd612809aeeac263b5d4b5b22b9f84190da67216cc298a96652301086"
  enforcement_level = "advisory"
}

policy "deny-public-ssh-acl-rules" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/aws-networking-terraform/1.0.2/policy/deny-public-ssh-acl-rules.sentinel?checksum=sha256:b56a7869c9ddd2bece7de8d251de106e072407207247e6f94e001b6eba22c71b"
  enforcement_level = "advisory"
}
