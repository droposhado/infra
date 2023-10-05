terraform {
  cloud {
    organization = "droposhado-org"

    workspaces {
      name = "secrets"
    }
  }
}
