resource "fly_app" "uptime_kuma" {
  name = data.terraform_remote_state.names.outputs.uptime_kuma
  org  = var.org_name
}
