resource "fly_machine" "main" {
  for_each = toset(var.regions)

  app    = fly_app.main.name
  region = each.value
  name   = "${fly_app.main.name}-${each.value}"
  image  = var.image
  env    = var.env


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
  cpus     = var.cpus
  memorymb = var.memorymb

  # mounts = [
  #   {
  #     path   = "/app/data",
  #     volume = lookup(fly_volume.main, each.value).id
  #   }
  # ]

  depends_on = [
    fly_app.main,
    fly_volume.main
  ]

  lifecycle {
    prevent_destroy = var.prevent_destroy
  }
}
