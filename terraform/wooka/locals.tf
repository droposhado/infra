locals {
  # see doppler-secret.tf
  # doppler_secrets = {
  #   BOT_ADMINS        = var.wooka_bot_admins
  #   BOT_PREFIX        = var.wooka_bot_prefix
  #   CHATROOM_FN       = var.wooka_chatroom_fn
  #   CHATROOM_PRESENCE = var.wooka_chatroom_presence
  #   SENTRY_DSN        = local.sentry_dsn
  #   XMPP_USERNAME     = var.wooka_xmpp_username
  #   XMPP_PASSWORD     = var.wooka_xmpp_password
  # }
  sentry     = data.terraform_remote_state.bootstrap.outputs.sentry
  sentry_dsn = module.sentry_project.key.dsn_public
}
