output "domain" {
  value = mailgun_domain_credential.main.domain
}

output "host" {
  value = var.mailgun_smtp_host
}

output "region" {
  value = mailgun_domain_credential.main.region
}

output "password" {
  value = mailgun_domain_credential.main.password
}

output "port" {
  value = var.mailgun_smtp_port
}

output "username" {
  value = mailgun_domain_credential.main.login
}
