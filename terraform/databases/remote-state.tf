data "terraform_remote_state" "seeds" {
  backend = "remote"

  config = {
    organization = "droposhado-org"
    workspaces = {
      name = "seeds"
    }
  }
}

data "terraform_remote_state" "network" {
  backend = "remote"

  config = {
    organization = "droposhado-org"
    workspaces = {
      name = "network"
    }
  }
}
