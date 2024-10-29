resource "koyeb_domain" "main" {
  name     = local.domain
  app_name = koyeb_app.main.name
}
