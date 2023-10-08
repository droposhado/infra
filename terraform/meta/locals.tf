locals {
  notifications = [
    data.tfe_workspace.meta.id,
    tfe_workspace.apps.id,
    tfe_workspace.buckets.id,
    tfe_workspace.databases.id,
    tfe_workspace.dns.id,
    tfe_workspace.k8s.id,
    tfe_workspace.secrets.id,
    tfe_workspace.seeds.id
  ]
}
