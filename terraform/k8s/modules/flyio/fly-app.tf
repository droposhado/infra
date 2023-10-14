resource "fly_app" "main" {
  name = var.app_name
  org  = var.org_name
}
