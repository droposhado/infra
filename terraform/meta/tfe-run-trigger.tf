# only 1 trigger exists, this or manually entered
resource "tfe_run_trigger" "meta_seeds" {
  workspace_id  = tfe_workspace.seeds.id
  sourceable_id = data.tfe_workspace.meta.id
}

resource "tfe_run_trigger" "seeds_network" {
  workspace_id  = tfe_workspace.network.id
  sourceable_id = tfe_workspace.seeds.id
}

resource "tfe_run_trigger" "network_buckets" {
  workspace_id  = tfe_workspace.buckets.id
  sourceable_id = tfe_workspace.network.id
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


resource "tfe_run_trigger" "k8s_dns" {
  workspace_id  = tfe_workspace.dns.id
  sourceable_id = tfe_workspace.k8s.id
}
