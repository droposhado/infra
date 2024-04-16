resource "mailgun_domain" "main" {
  name          = local.fqdn
  region        = var.mailgun_region
  spam_action   = var.mailgun_spam_action
  dkim_key_size = var.mailgun_dkim_key_size
}