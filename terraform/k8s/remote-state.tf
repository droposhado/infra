data "terraform_remote_state" "names" {
  backend = "remote"

  config = {
    organization = "droposhado-org"
    workspaces = {
      name = "names"
    }
  }
}

data "terraform_remote_state" "secrets" {
  backend = "remote"

  config = {
    organization = "droposhado-org"
    workspaces = {
      name = "secrets"
    }
  }
}

