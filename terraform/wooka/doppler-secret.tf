# Dynamic use of secrets raises:
#
# Error: One or more secret fields are restricted: [raw computed].
# You must use a service account or service token to manage these resources.
# Otherwise, Terraform cannot fetch these restricted secrets to check the
# validity of their state.
# 
# resource "doppler_secret" "main" {
#   for_each = tomap(local.doppler_secrets)

#   project = doppler_project.main.name
#   config  = doppler_config.main.name
#   name    = each.key
#   value   = each.value
# }

# Individual itens avoid this error or upgrading account to team
resource "doppler_secret" "sentry_dsn" {
  project = doppler_project.main.name
  config  = doppler_config.main.name
  name    = "SENTRY_DSN"
  value   = local.sentry_dsn
}

resource "doppler_secret" "wooka_bot_admin" {
  project = doppler_project.main.name
  config  = doppler_config.main.name
  name    = "BOT_ADMINS"
  value   = var.wooka_bot_admins
}

resource "doppler_secret" "wooka_bot_prefix" {
  project = doppler_project.main.name
  config  = doppler_config.main.name
  name    = "BOT_PREFIX"
  value   = var.wooka_bot_prefix
}

resource "doppler_secret" "wooka_chatroom_fn" {
  project = doppler_project.main.name
  config  = doppler_config.main.name
  name    = "CHATROOM_FN"
  value   = var.wooka_chatroom_fn
}

resource "doppler_secret" "wooka_chatroom_presence" {
  project = doppler_project.main.name
  config  = doppler_config.main.name
  name    = "CHATROOM_PRESENCE"
  value   = var.wooka_chatroom_presence
}

resource "doppler_secret" "wooka_xmpp_username" {
  project = doppler_project.main.name
  config  = doppler_config.main.name
  name    = "XMPP_USERNAME"
  value   = var.wooka_xmpp_username
}

resource "doppler_secret" "wooka_xmpp_password" {
  project = doppler_project.main.name
  config  = doppler_config.main.name
  name    = "XMPP_PASSWORD"
  value   = var.wooka_xmpp_password
}
