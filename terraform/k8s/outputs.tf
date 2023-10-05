output "endpoints" {
  value = {
    sabedoria = "https://${local.sabedoria}-${var.cluster_default_namespace}.cloud.okteto.net"
  }
}
