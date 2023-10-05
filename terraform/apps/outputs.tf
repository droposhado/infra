output "uptime_kuma" {
  value = {
    cert = {
      droposhado_org = {
        challenge = fly_cert.status_droposhado_org.dnsvalidationhostname
        target    = fly_cert.status_droposhado_org.dnsvalidationtarget
      }

      vertice_space = {
        challenge = fly_cert.status_vertice_space.dnsvalidationhostname
        target    = fly_cert.status_vertice_space.dnsvalidationtarget
      }
    }
    ip = { for k, v in fly_ip.uptime_kuma : k => v.address }
  }
}
