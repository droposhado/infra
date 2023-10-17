resource "kubernetes_service_v1" "gotify" {
  metadata {
    name      = local.gotify.name
    namespace = var.cluster_default_namespace
  }

  spec {
    port {
      name = local.gotify.name
      port = local.gotify.env.PORT
    }

    selector = {
      app = local.gotify.name
    }

    type = "ClusterIP"
  }
}
