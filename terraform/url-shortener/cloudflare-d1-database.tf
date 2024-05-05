resource "cloudflare_d1_database" "main" {
  account_id = data.cloudflare_zone.main.account_id
  name       = module.database_name.name
}
