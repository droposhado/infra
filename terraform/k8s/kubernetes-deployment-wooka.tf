resource "kubernetes_deployment_v1" "wooka" {
  metadata {
    name      = local.wooka
    namespace = var.cluster_default_namespace
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = local.wooka
      }
    }

    template {
      metadata {
        labels = {
          app = local.wooka
        }
      }

      spec {
        container {
          name  = local.wooka
          image = "quay.io/droposhado/wooka:latest"
          dynamic "env" {
            for_each = tomap(local.wooka_secrets)
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
