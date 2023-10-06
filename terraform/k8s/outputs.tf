output "endpoints" {
  value = {
    gotify    = "https://${local.gotify}-${var.cluster_default_namespace}.cloud.okteto.net"
    redmine   = "https://${local.redmine}-${var.cluster_default_namespace}.cloud.okteto.net"
    sabedoria = "https://${local.sabedoria}-${var.cluster_default_namespace}.cloud.okteto.net"
  }
}
