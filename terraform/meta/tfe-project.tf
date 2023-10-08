resource "tfe_project" "bootstrap" {
  organization = tfe_organization.main.name
  name         = "bootstrap"
}

resource "tfe_project" "compute" {
  organization = tfe_organization.main.name
  name         = "compute"
}

resource "tfe_project" "network" {
  organization = tfe_organization.main.name
  name         = "network"
}

resource "tfe_project" "storage" {
  organization = tfe_organization.main.name
  name         = "storage"
}

resource "tfe_project" "vault" {
  organization = tfe_organization.main.name
  name         = "vault"
}

resource "tfe_project" "vpc" {
  organization = tfe_organization.main.name
  name         = "vpc"
}
