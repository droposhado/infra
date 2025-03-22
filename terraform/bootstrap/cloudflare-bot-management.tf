resource "cloudflare_bot_management" "main" {
  zone_id            = data.cloudflare_zone.main.id
  enable_js          = true
  auto_update_model  = true
  fight_mode         = true
  ai_bots_protection = "block"

  # sbfm_definitely_automated       = "block"
  # sbfm_likely_automated           = "managed_challenge"
  # sbfm_verified_bots              = "allow"
  # sbfm_static_resource_protection = false
  # optimize_wordpress              = true
}