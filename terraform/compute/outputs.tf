output "endpoints" {
  value = {
    gotify    = "https://${local.gotify.name}-${var.cluster_default_namespace}.cloud.okteto.net"
    redmine   = "https://${local.redmine.name}-${var.cluster_default_namespace}.cloud.okteto.net"
    sabedoria = "https://${local.sabedoria.name}-${var.cluster_default_namespace}.cloud.okteto.net"
  }
}
