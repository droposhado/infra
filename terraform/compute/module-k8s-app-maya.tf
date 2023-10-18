module "k8s_app_maya" {
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
    "dev.okteto.com/generate-host" = local.maya.name
  }

  app_name = local.maya.name
  image    = local.maya.image
  port     = local.maya.env.PORT
  env      = local.maya.env
}
