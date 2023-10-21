data "terraform_remote_state" "storage" {
  backend = "remote"

  config = {
    organization = "droposhado-org"
    workspaces = {
      name = "storage"
    }
  }
}

data "terraform_remote_state" "compute" {
  backend = "remote"

  config = {
    organization = "droposhado-org"
    workspaces = {
      name = "compute"
    }
  }
}
