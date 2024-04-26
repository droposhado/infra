terraform {
  cloud {
    organization = "droposhado-org"

    workspaces {
      name = "go"
    }
  }
}
