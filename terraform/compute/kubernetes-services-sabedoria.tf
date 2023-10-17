resource "kubernetes_service_v1" "sabedoria" {
  metadata {
    name      = local.sabedoria.name
    namespace = var.cluster_default_namespace
  }

  spec {
    port {
      name = local.sabedoria.name
      port = local.sabedoria.env.PORT
    }

    selector = {
      app = local.sabedoria.name
    }

    type = "ClusterIP"
  }
}
