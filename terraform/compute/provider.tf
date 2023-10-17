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

  cluster_ca_certificate = base64decode(var.cluster_ca_cert)
  token                  = var.cluster_token
  ignore_annotations = [
    "dev\\.okteto\\.com/*"
  ]
  ignore_labels = [
    "dev\\.okteto\\.com/*"
  ]
}

