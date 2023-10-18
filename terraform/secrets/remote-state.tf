data "terraform_remote_state" "databases" {
  backend = "remote"

  config = {
    organization = "droposhado-org"
    workspaces = {
      name = "databases"
    }
  }
}

data "terraform_remote_state" "seeds" {
  backend = "remote"

  config = {
    organization = "droposhado-org"
    workspaces = {
      name = "seeds"
    }
  }
}

data "terraform_remote_state" "storage" {
  backend = "remote"

  config = {
    organization = "droposhado-org"
    workspaces = {
      name = "storage"
    }
  }
}
