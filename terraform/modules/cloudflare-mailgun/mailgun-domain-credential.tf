resource "mailgun_domain_credential" "foobar" {
  domain   = local.fqdn
  login    = var.mailgun_username
  password = random_password.main.result
  region   = var.mailgun_region
}