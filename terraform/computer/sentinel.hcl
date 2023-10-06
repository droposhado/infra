policy "ecs-service-should-not-have-public-ip" {
  source            = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy/ecs-service-should-not-have-public-ip.sentinel?checksum=sha256:0b7d6e0e010e019c969101244d6de952da94590e98a7704af7a06f823cf3f1ce"
  enforcement_level = "advisory"
}

policy "efs-filesystem-should-have-encryption-enabled" {
  source            = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy/efs-filesystem-should-have-encryption-enabled.sentinel?checksum=sha256:5e2d67fabdf0763028b88dbde8d6b3f52328a2d328b96381baad522bb48732b2"
  enforcement_level = "advisory"
}
