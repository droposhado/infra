resource "kubernetes_service_v1" "redmine" {
  metadata {
    name      = local.redmine.name
    namespace = var.cluster_default_namespace
  }

  spec {
    port {
      name = local.redmine.name
      port = local.redmine.env.PORT
    }

    selector = {
      app = local.redmine.name
    }

    type = "ClusterIP"
  }
}
