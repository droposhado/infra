resource "fly_cert" "main" {
  app      = fly_app.main.name
  hostname = var.custom_domain

  depends_on = [
    fly_app.main,
  ]
}
