resource "fly_volume" "uptime_kuma" {
  for_each = toset(var.regions)

  name   = "uptime_kuma_${each.value}"
  app    = fly_app.uptime_kuma.name
  size   = 1
  region = each.value

  depends_on = [
    fly_app.uptime_kuma
  ]
}
