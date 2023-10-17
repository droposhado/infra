resource "kubernetes_ingress_v1" "sabedoria" {
  metadata {
    name      = local.sabedoria.name
    namespace = var.cluster_default_namespace

    annotations = {
      "dev.okteto.com/generate-host" = local.sabedoria.name
    }
  }

  spec {
    rule {
      host = "${local.sabedoria.name}-${var.cluster_default_namespace}.cloud.okteto.net"
      http {
        path {
          path      = "/"
          path_type = "ImplementationSpecific"

          backend {
            service {
              name = local.sabedoria.name

              port {
                number = local.sabedoria.env.PORT
              }
            }
          }
        }
      }
    }
    tls {
      hosts = [
        "${local.sabedoria.name}-${var.cluster_default_namespace}.cloud.okteto.net",
      ]
    }
  }
}
