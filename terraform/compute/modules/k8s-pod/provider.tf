terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.22.0"
    }
  }
}

provider "kubernetes" {
  host = var.cluster_endpoint

  cluster_ca_certificate = base64decode(var.cluster_ca_certificate)
  token                  = var.cluster_token
  ignore_annotations     = var.provider_ignore_annotations
  ignore_labels          = var.provider_ignore_labels
}

