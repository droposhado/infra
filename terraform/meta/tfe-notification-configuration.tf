resource "tfe_notification_configuration" "furgao" {
  for_each = local.notifications

  workspace_id     = each.value
  name             = "default serverless notification"
  enabled          = false
  destination_type = "generic"
  url              = "https://webhook.${var.domain}/tfe"
  token            = var.tfe_verification_secret
  triggers = [
    "run:created",
    "run:planning",
    "run:needs_attention",
    "run:applying",
    "run:completed",
    "run:errored",
    "assessment:check_failure",
    "assessment:drifted",
    "assessment:failed"
  ]

  # depends_on = [
  #   data.tfe_workspace.meta,
  #   tfe_workspace.storage,
  #   tfe_workspace.databases,
  #   tfe_workspace.dns,
  #   tfe_workspace.k8s,
  #   tfe_workspace.secrets,
  #   tfe_workspace.seeds
  # ]
}
