resource "tfe_notification_configuration" "main" {
  for_each = toset(local.notifications)

  workspace_id     = each.value
  name             = "default serverless notification"
  enabled          = false
  destination_type = "generic"
  url              = var.webhook_url
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
}
