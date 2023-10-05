data "terraform_remote_state" "buckets" {
  backend = "remote"

  config = {
    organization = "droposhado-org"
    workspaces = {
      name = "buckets"
    }
  }
}

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
