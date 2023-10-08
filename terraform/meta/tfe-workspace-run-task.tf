resource "tfe_workspace_run_task" "network" {
  workspace_id      = tfe_workspace.network.id
  task_id           = tfe_organization_run_task.snyk.id
  enforcement_level = "mandatory"
  stage             = "pre_apply"
}

resource "tfe_workspace_run_task" "buckets" {
  workspace_id      = tfe_workspace.buckets.id
  task_id           = tfe_organization_run_task.snyk.id
  enforcement_level = "advisory"
  stage             = "pre_apply"
}

resource "tfe_workspace_run_task" "secrets" {
  workspace_id      = tfe_workspace.secrets.id
  task_id           = tfe_organization_run_task.snyk.id
  enforcement_level = "advisory"
  stage             = "pre_apply"
}

resource "tfe_workspace_run_task" "databases" {
  workspace_id      = tfe_workspace.databases.id
  task_id           = tfe_organization_run_task.snyk.id
  enforcement_level = "advisory"
  stage             = "pre_apply"
}

resource "tfe_workspace_run_task" "dns" {
  workspace_id      = tfe_workspace.dns.id
  task_id           = tfe_organization_run_task.snyk.id
  enforcement_level = "advisory"
  stage             = "pre_apply"
}
