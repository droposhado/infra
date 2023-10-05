resource "fly_ip" "uptime_kuma" {
  for_each = toset(["v4", "v6"])

  app        = fly_app.uptime_kuma.name
  type       = each.value
  depends_on = [fly_app.uptime_kuma]
}
