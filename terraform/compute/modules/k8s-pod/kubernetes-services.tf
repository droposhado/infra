resource "kubernetes_service_v1" "main" {
  metadata {
    name      = var.app_name
    namespace = var.cluster_default_namespace
  }

  spec {
    port {
      name = var.app_name
      port = var.port
    }

    selector = {
      app = var.app_name
    }

    type = "ClusterIP"
  }
}
