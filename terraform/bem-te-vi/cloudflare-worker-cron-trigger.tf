resource "cloudflare_worker_cron_trigger" "main" {
  account_id  = data.cloudflare_zone.main.account_id
  script_name = cloudflare_worker_script.main.name
  schedules = [
    "0 6 * * *", # At 06:00 every day
  ]
}