output "main" {
  value = {
    cert = {
      challenge = fly_cert.main.dnsvalidationhostname
      target    = fly_cert.main.dnsvalidationtarget
    }
    ip = { for k, v in fly_ip.main : k => v.address }
  }
}
