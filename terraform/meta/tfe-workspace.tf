data "tfe_workspace" "meta" {
  name         = "meta"
  organization = tfe_organization.main.name
}

resource "tfe_workspace" "seeds" {
  name               = "seeds"
  organization       = tfe_organization.main.name
  allow_destroy_plan = false
  auto_apply         = true
  execution_mode     = "remote"
  force_delete       = false
  project_id         = tfe_project.bootstrap.id
  queue_all_runs     = false
  working_directory  = "terraform/seeds"
  trigger_patterns   = distinct(["terraform/seeds/**/*", "terraform/seeds/**"])
  remote_state_consumer_ids = [
    tfe_workspace.buckets.id,
    tfe_workspace.databases.id,
    tfe_workspace.secrets.id,
    tfe_workspace.network.id
  ]
  terraform_version = "1.5.4"
  vcs_repo {
    identifier                 = "${var.github_infra_user}/${var.github_infra_repo}"
    branch                     = "main"
    ingress_submodules         = false
    github_app_installation_id = data.tfe_github_app_installation.gha_installation.id
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "network" {
  name              = "network"
  organization      = tfe_organization.main.name
  auto_apply        = true
  execution_mode    = "remote"
  force_delete      = false
  project_id        = tfe_project.network.id
  queue_all_runs    = false
  working_directory = "terraform/network"
  trigger_patterns  = distinct(["terraform/network/**/*", "terraform/network/**"])
  remote_state_consumer_ids = [
    tfe_workspace.buckets.id,
    tfe_workspace.databases.id,
    tfe_workspace.dns.id
  ]
  terraform_version = "1.5.4"
  vcs_repo {
    identifier                 = "${var.github_infra_user}/${var.github_infra_repo}"
    branch                     = "main"
    ingress_submodules         = false
    github_app_installation_id = data.tfe_github_app_installation.gha_installation.id
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "buckets" {
  name              = "buckets"
  organization      = tfe_organization.main.name
  auto_apply        = true
  execution_mode    = "remote"
  force_delete      = false
  project_id        = tfe_project.storage.id
  queue_all_runs    = false
  working_directory = "terraform/buckets"
  trigger_patterns  = distinct(["terraform/buckets/**", "terraform/buckets/**/*"])
  remote_state_consumer_ids = [
    tfe_workspace.databases.id
  ]
  terraform_version = "1.5.4"
  vcs_repo {
    identifier                 = "${var.github_infra_user}/${var.github_infra_repo}"
    branch                     = "main"
    ingress_submodules         = false
    github_app_installation_id = data.tfe_github_app_installation.gha_installation.id
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "databases" {
  name              = "databases"
  organization      = tfe_organization.main.name
  auto_apply        = true
  execution_mode    = "remote"
  force_delete      = false
  project_id        = tfe_project.storage.id
  queue_all_runs    = false
  working_directory = "terraform/databases"
  trigger_patterns  = distinct(["terraform/databases/**", "terraform/databases/**/*"])
  remote_state_consumer_ids = [
    tfe_workspace.secrets.id
  ]
  terraform_version = "1.5.4"
  vcs_repo {
    identifier                 = "${var.github_infra_user}/${var.github_infra_repo}"
    branch                     = "main"
    ingress_submodules         = false
    github_app_installation_id = data.tfe_github_app_installation.gha_installation.id
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "secrets" {
  name              = "secrets"
  organization      = tfe_organization.main.name
  auto_apply        = true
  execution_mode    = "remote"
  force_delete      = false
  project_id        = tfe_project.vault.id
  queue_all_runs    = false
  working_directory = "terraform/secrets"
  trigger_patterns  = distinct(["terraform/secrets/**", "terraform/secrets/**/*"])
  terraform_version = "1.5.4"
  vcs_repo {
    identifier                 = "${var.github_infra_user}/${var.github_infra_repo}"
    branch                     = "main"
    ingress_submodules         = false
    github_app_installation_id = data.tfe_github_app_installation.gha_installation.id
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "apps" {
  name              = "apps"
  organization      = tfe_organization.main.name
  auto_apply        = true
  execution_mode    = "remote"
  force_delete      = false
  project_id        = tfe_project.compute.id
  queue_all_runs    = false
  working_directory = "terraform/apps"
  trigger_patterns  = distinct(["terraform/apps/**", "terraform/apps/**/*"])
  remote_state_consumer_ids = [
    tfe_workspace.secrets.id
  ]
  terraform_version = "1.5.4"
  vcs_repo {
    identifier                 = "${var.github_infra_user}/${var.github_infra_repo}"
    branch                     = "main"
    ingress_submodules         = false
    github_app_installation_id = data.tfe_github_app_installation.gha_installation.id
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "k8s" {
  name              = "k8s"
  organization      = tfe_organization.main.name
  auto_apply        = true
  execution_mode    = "remote"
  force_delete      = false
  project_id        = tfe_project.compute.id
  queue_all_runs    = false
  working_directory = "terraform/k8s"
  trigger_patterns  = distinct(["terraform/k8s/**", "terraform/k8s/**/*"])
  remote_state_consumer_ids = [
    tfe_workspace.secrets.id
  ]
  terraform_version = "1.5.4"
  vcs_repo {
    identifier                 = "${var.github_infra_user}/${var.github_infra_repo}"
    branch                     = "main"
    ingress_submodules         = false
    github_app_installation_id = data.tfe_github_app_installation.gha_installation.id
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "dns" {
  name              = "dns"
  organization      = tfe_organization.main.name
  auto_apply        = true
  execution_mode    = "remote"
  force_delete      = false
  project_id        = tfe_project.network.id
  queue_all_runs    = false
  working_directory = "terraform/dns"
  trigger_patterns  = distinct(["terraform/dns/**", "terraform/dns/**/*"])
  remote_state_consumer_ids = [
    tfe_workspace.apps.id,
    tfe_workspace.k8s.id
  ]
  terraform_version = "1.5.4"
  vcs_repo {
    identifier                 = "${var.github_infra_user}/${var.github_infra_repo}"
    branch                     = "main"
    ingress_submodules         = false
    github_app_installation_id = data.tfe_github_app_installation.gha_installation.id
  }

  lifecycle {
    prevent_destroy = true
  }
}



resource "tfe_workspace" "vpc" {
  name              = "vpc"
  organization      = tfe_organization.main.name
  auto_apply        = true
  execution_mode    = "remote"
  force_delete      = true
  project_id        = tfe_project.vpc.id
  queue_all_runs    = false
  working_directory = "terraform/vpc"
  trigger_patterns  = distinct(["terraform/vpc/**/*", "terraform/vpc/**"])
  remote_state_consumer_ids = [
    tfe_workspace.buckets.id,
    tfe_workspace.databases.id,
    tfe_workspace.dns.id
  ]
  terraform_version = "1.5.4"
  vcs_repo {
    identifier                 = "${var.github_infra_user}/${var.github_infra_repo}"
    branch                     = "main"
    ingress_submodules         = false
    github_app_installation_id = data.tfe_github_app_installation.gha_installation.id
  }

  lifecycle {
    prevent_destroy = false
  }
}
