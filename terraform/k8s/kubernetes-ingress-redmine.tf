resource "kubernetes_ingress_v1" "redmine" {
  metadata {
    name      = local.redmine.name
    namespace = var.cluster_default_namespace

    annotations = {
      "dev.okteto.com/generate-host" = local.redmine.name
    }
  }

  spec {
    rule {
      host = "${local.redmine.name}-${var.cluster_default_namespace}.cloud.okteto.net"
      http {
        path {
          path      = "/"
          path_type = "ImplementationSpecific"

          backend {
            service {
              name = local.redmine.name

              port {
                number = local.redmine.env.PORT
              }
            }
          }
        }
      }
    }
    tls {
      hosts = [
        "${local.redmine.name}-${var.cluster_default_namespace}.cloud.okteto.net",
      ]
    }
  }
}
