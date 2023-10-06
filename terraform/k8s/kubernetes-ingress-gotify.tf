resource "kubernetes_ingress_v1" "gotify" {
  metadata {
    name      = local.gotify.name
    namespace = var.cluster_default_namespace

    annotations = {
      "dev.okteto.com/generate-host" = local.gotify.name
    }
  }

  spec {
    rule {
      host = "${local.gotify.name}-${var.cluster_default_namespace}.cloud.okteto.net"
      http {
        path {
          path      = "/"
          path_type = "ImplementationSpecific"

          backend {
            service {
              name = local.gotify.name

              port {
                number = local.gotify.env.PORT
              }
            }
          }
        }
      }
    }
    tls {
      hosts = [
        "${local.gotify.name}-${var.cluster_default_namespace}.cloud.okteto.net",
      ]
    }
  }
}
