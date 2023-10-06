resource "tfe_run_trigger" "seeds_vpc" {
  workspace_id  = tfe_workspace.vpc.id
  sourceable_id = tfe_workspace.seeds.id
}

resource "tfe_run_trigger" "vpc_buckets" {
  workspace_id  = tfe_workspace.buckets.id
  sourceable_id = tfe_workspace.vpc.id
}

resource "tfe_run_trigger" "buckets_databases" {
  workspace_id  = tfe_workspace.databases.id
  sourceable_id = tfe_workspace.buckets.id
}

resource "tfe_run_trigger" "databases_secrets" {
  workspace_id  = tfe_workspace.secrets.id
  sourceable_id = tfe_workspace.databases.id
}

resource "tfe_run_trigger" "secrets_k8s" {
  workspace_id  = tfe_workspace.k8s.id
  sourceable_id = tfe_workspace.secrets.id
}

resource "tfe_run_trigger" "apps_k8s" {
  workspace_id  = tfe_workspace.k8s.id
  sourceable_id = tfe_workspace.apps.id
}

resource "tfe_run_trigger" "k8s_dns" {
  workspace_id  = tfe_workspace.dns.id
  sourceable_id = tfe_workspace.k8s.id
}

resource "tfe_run_trigger" "k8s_apps" {
  workspace_id  = tfe_workspace.apps.id
  sourceable_id = tfe_workspace.k8s.id
}
