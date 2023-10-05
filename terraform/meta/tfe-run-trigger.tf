# Create run trigger for [ K8s ] -> [ Consul ]
resource "tfe_run_trigger" "seeds_buckets" {
  workspace_id  = tfe_workspace.buckets.id
  sourceable_id = tfe_workspace.seeds.id
}

resource "tfe_run_trigger" "buckets_databases" {
  workspace_id  = tfe_workspace.databases.id
  sourceable_id = tfe_workspace.buckets.id
}

resource "tfe_run_trigger" "databases_secrets" {
  workspace_id  = tfe_workspace.secrets.id
  sourceable_id = tfe_workspace.databases.id
}
