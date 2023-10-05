terraform {
  cloud {
    organization = "droposhado-org"

    workspaces {
      name = "seeds"
    }
  }
}
