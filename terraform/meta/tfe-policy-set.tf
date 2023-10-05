resource "tfe_policy_set" "one" {
  name         = "one"
  description  = "Limit on free plan is one"
  organization = tfe_organization.main.name
  kind         = "sentinel"
  policy_ids = [
    tfe_policy.rds.id,
    tfe_policy.vpc.id
  ]
  workspace_ids = [
    tfe_workspace.vpc.id,
    tfe_workspace.databases.id
  ]
}
