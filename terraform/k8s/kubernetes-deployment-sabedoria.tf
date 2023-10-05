resource "kubernetes_deployment_v1" "sabedoria" {
  metadata {
    name      = local.sabedoria
    namespace = var.cluster_default_namespace
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = local.sabedoria
      }
    }

    template {
      metadata {
        labels = {
          app = local.sabedoria
        }
      }

      spec {
        container {
          name  = local.sabedoria
          image = "quay.io/droposhado/sabedoria:latest"
          dynamic "env" {
            for_each = tomap(local.sabedoria_secrets)
            content {
              name  = env.key
              value = env.value
            }
          }
        }
      }
    }
  }
}
