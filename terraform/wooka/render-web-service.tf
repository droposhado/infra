resource "render_web_service" "main" {
  name   = module.render_service_name.name
  plan   = var.render_plan
  region = var.render_region

  runtime_source = {
    image = {
      image_url = var.image_url
      tag       = var.image_tag
    }
  }

  env_vars = {
    "BOT_ADMINS"        = { value = var.wooka_bot_admins },
    "CHATROOM_PRESENCE" = { value = var.wooka_chatroom_presence },
    "SENTRY_DSN"        = { value = local.sentry_dsn },
    "XMPP_USERNAME"     = { value = var.wooka_xmpp_username },
    "XMPP_PASSWORD"     = { value = var.wooka_xmpp_password }
  }

}