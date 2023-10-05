resource "fly_machine" "uptime_kuma" {
  for_each = toset(var.regions)

  app    = fly_app.uptime_kuma.name
  region = each.value
  name   = "uptime-kuma-${each.value}"
  image  = "louislam/uptime-kuma:1"
  env = {
    PORT = "8080"
    HOST = "0.0.0.0"
  }


  services = [
    {
      ports = [
        {
          port     = 443
          handlers = ["tls", "http"]
        },
        {
          port     = 80
          handlers = ["http"]
        }
      ]
      "protocol" : "tcp",
      "internal_port" : 8080
    },
  ]
  cpus     = 1
  memorymb = 256

  mounts = [
    {
      path   = "/app/data",
      volume = lookup(fly_volume.uptime_kuma, each.value).id
    }
  ]

  depends_on = [
    fly_app.uptime_kuma,
    fly_volume.uptime_kuma
  ]

  lifecycle {
    prevent_destroy = false
  }
}
