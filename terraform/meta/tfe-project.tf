resource "tfe_project" "infra" {
  organization = tfe_organization.main.name
  name         = "infra"
}
