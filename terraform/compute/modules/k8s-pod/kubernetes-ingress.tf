resource "kubernetes_ingress_v1" "gotify" {
  metadata {
    name      = var.app_name
    namespace = var.cluster_default_namespace

    annotations = var.ingress_annotation
  }

  spec {
    rule {
      host = "${var.app_name}-${var.cluster_default_namespace}.cloud.okteto.net"
      http {
        path {
          path      = "/"
          path_type = "ImplementationSpecific"

          backend {
            service {
              name = var.app_name

              port {
                number = var.port
              }
            }
          }
        }
      }
    }
    tls {
      hosts = [
        "${var.app_name}-${var.cluster_default_namespace}.cloud.okteto.net",
      ]
    }
  }
}
