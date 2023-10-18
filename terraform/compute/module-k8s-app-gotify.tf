module "k8s_app_gotify" {
  source                    = "./modules/k8s-pod"
  cluster_endpoint          = var.cluster_endpoint
  cluster_ca_certificate    = var.cluster_ca_certificate
  cluster_default_namespace = var.cluster_default_namespace
  cluster_token             = var.cluster_token

  provider_ignore_annotations = [
    "dev\\.okteto\\.com/*"
  ]
  provider_ignore_labels = [
    "dev\\.okteto\\.com/*"
  ]
  ingress_annotation = {
    "dev.okteto.com/generate-host" = local.gotify.name
  }

  app_name = local.gotify.name
  image    = local.gotify.image
  port     = local.gotify.env.PORT
  env      = local.gotify.env
}
