data "terraform_remote_state" "meta" {
  backend = "remote"

  config = {
    organization = "droposhado-org"
    workspaces = {
      name = "meta"
    }
  }
}