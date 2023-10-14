# resource "fly_volume" "main" {
#   for_each = toset(var.regions)

#   name   = "${varname}_${each.value}"
#   app    = fly_app.main.name
#   size   = 1
#   region = each.value

#   depends_on = [
#     fly_app.main
#   ]
# }
