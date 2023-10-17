resource "tfe_variable" "compute_cluster_ca_cert" {
  key          = "cluster_ca_cert"
  value        = var.cluster_ca_cert
  category     = "terraform"
  workspace_id = tfe_workspace.compute.id
}

resource "tfe_variable" "compute_cluster_default_namespace" {
  key          = "cluster_default_namespace"
  value        = var.cluster_default_namespace
  category     = "terraform"
  workspace_id = tfe_workspace.compute.id
}

resource "tfe_variable" "compute_cluster_endpoint" {
  key          = "cluster_endpoint"
  value        = var.cluster_endpoint
  category     = "terraform"
  workspace_id = tfe_workspace.compute.id
}

resource "tfe_variable" "compute_domain" {
  key          = "domain"
  value        = var.domain
  category     = "terraform"
  workspace_id = tfe_workspace.compute.id
}

resource "tfe_variable" "compute_environment" {
  key          = "environment"
  value        = var.environment
  category     = "terraform"
  workspace_id = tfe_workspace.compute.id
}

resource "tfe_variable" "compute_cluster_token" {
  key          = "cluster_token"
  value        = var.cluster_token
  category     = "terraform"
  workspace_id = tfe_workspace.compute.id
}
