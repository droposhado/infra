resource "kubernetes_deployment_v1" "wooka" {
  metadata {
    name      = local.wooka.name
    namespace = var.cluster_default_namespace
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = local.wooka.name
      }
    }

    template {
      metadata {
        labels = {
          app = local.wooka.name
        }
      }

      spec {
        container {
          name  = local.wooka.name
          image = "quay.io/droposhado/wooka:latest"
          dynamic "env" {
            for_each = tomap(local.wooka.env)
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