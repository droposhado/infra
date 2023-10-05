resource "tfe_policy" "rds" {
  name         = "rds-policy"
  organization = tfe_organization.main.name
  kind         = "sentinel"
  policy       = file("${path.module}/sentinel/rds.hcl")
  enforce_mode = "advisory"
}

resource "tfe_policy" "vpc" {
  name         = "vpc-policy"
  organization = tfe_organization.main.name
  kind         = "sentinel"
  policy       = file("${path.module}/sentinel/rds.hcl")
  enforce_mode = "hard-mandatory"
}
