data "terraform_remote_state" "apps" {
  backend = "remote"

  config = {
    organization = "droposhado-org"
    workspaces = {
      name = "apps"
    }
  }
}

data "terraform_remote_state" "k8s" {
  backend = "remote"

  config = {
    organization = "droposhado-org"
    workspaces = {
      name = "k8s"
    }
  }
}
