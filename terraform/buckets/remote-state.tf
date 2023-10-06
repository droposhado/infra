data "terraform_remote_state" "seeds" {
  backend = "remote"

  config = {
    organization = "droposhado-org"
    workspaces = {
      name = "seeds"
    }
  }
}
