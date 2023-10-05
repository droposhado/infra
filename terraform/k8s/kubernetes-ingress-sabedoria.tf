resource "kubernetes_ingress_v1" "sabedoria" {
  metadata {
    name      = local.sabedoria
    namespace = var.cluster_default_namespace

    annotations = {
      "dev.okteto.com/generate-host" = local.sabedoria
    }
  }

  spec {
    rule {
      host = "${local.sabedoria}-${var.cluster_default_namespace}.cloud.okteto.net"
      http {
        path {
          path      = "/"
          path_type = "ImplementationSpecific"

          backend {
            service {
              name = local.sabedoria

              port {
                number = local.sabedoria_secrets.PORT
              }
            }
          }
        }
      }
    }
    tls {
      hosts = [
        "${local.sabedoria}-${var.cluster_default_namespace}.cloud.okteto.net",
      ]
    }
  }
}
