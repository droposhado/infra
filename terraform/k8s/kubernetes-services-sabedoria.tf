resource "kubernetes_service_v1" "sabedoria" {
  metadata {
    name      = local.sabedoria
    namespace = var.cluster_default_namespace
  }

  spec {
    port {
      name = local.sabedoria
      port = local.sabedoria_secrets.PORT
    }

    selector = {
      app = local.sabedoria
    }

    type = "ClusterIP"
  }
}
