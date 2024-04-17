output "domain" {
  value = mailgun_domain_credential.main.domain
}

output "username" {
  value = mailgun_domain_credential.main.login
}

output "password" {
  value = mailgun_domain_credential.main.password
}

output "region" {
  value = mailgun_domain_credential.main.region
}
