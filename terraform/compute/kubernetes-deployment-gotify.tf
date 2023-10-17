resource "kubernetes_deployment_v1" "gotify" {
  metadata {
    name      = local.gotify.name
    namespace = var.cluster_default_namespace
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = local.gotify.name
      }
    }

    template {
      metadata {
        labels = {
          app = local.gotify.name
        }
      }

      spec {
        container {
          name  = local.gotify
          image = "gotify/server:2.4.0"
          dynamic "env" {
            for_each = tomap(local.gotify.env)
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
