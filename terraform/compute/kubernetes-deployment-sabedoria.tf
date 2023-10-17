resource "kubernetes_deployment_v1" "sabedoria" {
  metadata {
    name      = local.sabedoria.name
    namespace = var.cluster_default_namespace
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = local.sabedoria.name
      }
    }

    template {
      metadata {
        labels = {
          app = local.sabedoria.name
        }
      }

      spec {
        container {
          name  = local.sabedoria.name
          image = "quay.io/droposhado/sabedoria:latest"
          dynamic "env" {
            for_each = tomap(local.sabedoria.env)
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
