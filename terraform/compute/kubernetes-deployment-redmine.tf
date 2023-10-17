resource "kubernetes_deployment_v1" "redmine" {
  metadata {
    name      = local.redmine.name
    namespace = var.cluster_default_namespace
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = local.redmine.name
      }
    }

    template {
      metadata {
        labels = {
          app = local.redmine.name
        }
      }

      spec {
        container {
          name  = local.redmine.name
          image = "redmine:5.0.6-alpine3.18"
          dynamic "env" {
            for_each = tomap(local.redmine.env)
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
