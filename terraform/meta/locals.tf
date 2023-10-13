locals {
  notifications = {
    meta      = data.tfe_workspace.meta.id
    storage   = tfe_workspace.storage.id
    databases = tfe_workspace.databases.id
    dns       = tfe_workspace.dns.id
    k8s       = tfe_workspace.k8s.id
    secrets   = tfe_workspace.secrets.id
    seeds     = tfe_workspace.seeds.id
  }
}
