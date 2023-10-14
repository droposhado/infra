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

}
