resource "fly_cert" "status_droposhado_org" {
  app      = fly_app.uptime_kuma.name
  hostname = "status.droposhado.org"

  depends_on = [
    fly_app.uptime_kuma,
  ]
}

resource "fly_cert" "status_vertice_space" {
  app      = fly_app.uptime_kuma.name
  hostname = "status.vertice.space"

  depends_on = [
    fly_app.uptime_kuma,
  ]
}
