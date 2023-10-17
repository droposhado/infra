resource "fly_ip" "main" {
  for_each = toset(["v4", "v6"])

  app        = fly_app.main.name
  type       = each.value
  depends_on = [fly_app.main]
}
