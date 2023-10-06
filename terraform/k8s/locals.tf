locals {
  gotify    = data.terraform_remote_state.secrets.outputs.gotify
  redmine   = data.terraform_remote_state.secrets.outputs.remine
  sabedoria = data.terraform_remote_state.secrets.outputs.sabedoria
  wooka     = data.terraform_remote_state.secrets.outputs.wooka
}
