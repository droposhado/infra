resource "tfe_workspace" "seeds" {
  name               = "seeds"
  organization       = tfe_organization.main.name
  allow_destroy_plan = false
  auto_apply         = true
  execution_mode     = "remote"
  force_delete       = false
  project_id         = tfe_project.infra.id
  queue_all_runs     = false
  working_directory  = "terraform/seeds"
  trigger_prefixes   = distinct(["terraform/seeds/**", "terraform/seeds/**/*"])
  remote_state_consumer_ids = [
    tfe_workspace.buckets.id,
    tfe_workspace.databases.id,
    tfe_workspace.secrets.id,
    tfe_workspace.vpc.id
  ]
  terraform_version = "~>1.5.4"
  vcs_repo {
    identifier         = "${var.github_infra_user}/${var.github_infra_repo}"
    branch             = "default"
    ingress_submodules = false
    #oauth_token_id     = tfe_oauth_client.github.oauth_token_id
    github_app_installation_id = var.github_app_installation_id
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "vpc" {
  name           = "vpc"
  organization   = tfe_organization.main.name
  auto_apply     = true
  execution_mode = "remote"
  force_delete   = false
  project_id     = tfe_project.infra.id
  queue_all_runs = false
  remote_state_consumer_ids = [
    tfe_workspace.buckets.id,
    tfe_workspace.databases.id,
    tfe_workspace.dns.id
  ]
  terraform_version = "~>1.5.4"
}

resource "tfe_workspace" "buckets" {
  name           = "buckets"
  organization   = tfe_organization.main.name
  auto_apply     = true
  execution_mode = "remote"
  force_delete   = false
  project_id     = tfe_project.infra.id
  queue_all_runs = false
  remote_state_consumer_ids = [
    tfe_workspace.databases.id
  ]
  terraform_version = "~>1.5.4"
}

resource "tfe_workspace" "databases" {
  name           = "databases"
  organization   = tfe_organization.main.name
  auto_apply     = true
  execution_mode = "remote"
  force_delete   = false
  project_id     = tfe_project.infra.id
  queue_all_runs = false
  remote_state_consumer_ids = [
    tfe_workspace.secrets.id
  ]
  terraform_version = "~>1.5.4"
}

resource "tfe_workspace" "secrets" {
  name              = "secrets"
  organization      = tfe_organization.main.name
  auto_apply        = true
  execution_mode    = "remote"
  force_delete      = false
  project_id        = tfe_project.infra.id
  queue_all_runs    = false
  terraform_version = "~>1.5.4"
}

resource "tfe_workspace" "apps" {
  name           = "apps"
  organization   = tfe_organization.main.name
  auto_apply     = true
  execution_mode = "remote"
  force_delete   = false
  project_id     = tfe_project.infra.id
  queue_all_runs = false
  remote_state_consumer_ids = [
    tfe_workspace.secrets.id
  ]
  terraform_version = "~>1.5.4"
}

resource "tfe_workspace" "k8s" {
  name           = "k8s"
  organization   = tfe_organization.main.name
  auto_apply     = true
  execution_mode = "remote"
  force_delete   = false
  project_id     = tfe_project.infra.id
  queue_all_runs = false
  remote_state_consumer_ids = [
    tfe_workspace.secrets.id
  ]
  terraform_version = "~>1.5.4"
}

resource "tfe_workspace" "dns" {
  name           = "dns"
  organization   = tfe_organization.main.name
  auto_apply     = true
  execution_mode = "remote"
  force_delete   = false
  project_id     = tfe_project.infra.id
  queue_all_runs = false
  remote_state_consumer_ids = [
    tfe_workspace.apps.id,
    tfe_workspace.k8s.id
  ]
  terraform_version = "~>1.5.4"
}
