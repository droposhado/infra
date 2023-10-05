data "terraform_remote_state" "names" {
  backend = "remote"

  config = {
    organization = "droposhado-org"
    workspaces = {
      name = "names"
    }
  }
}
