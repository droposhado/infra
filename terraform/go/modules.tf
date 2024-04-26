
aqui utiliza o pacote da uber que tem um servidor dinãmico

module "k8s_pod" {
  source                    = "../modules/k8s-pod"
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
    "dev.okteto.com/generate-host" = local.sabedoria.name
  }

  app_name = local.sabedoria.name
  image    = local.sabedoria.image
  port     = local.sabedoria.env.PORT
  env      = local.sabedoria.env
}