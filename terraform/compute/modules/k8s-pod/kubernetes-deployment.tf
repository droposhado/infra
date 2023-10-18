resource "kubernetes_deployment_v1" "gotify" {
  metadata {
    name      = var.app_name
    namespace = var.cluster_default_namespace
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = var.app_name
      }
    }

    template {
      metadata {
        labels = {
          app = var.app_name
        }
      }

      spec {
        container {
          name  = var.app_name
          image = var.image
          dynamic "env" {
            for_each = tomap(var.env)
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
