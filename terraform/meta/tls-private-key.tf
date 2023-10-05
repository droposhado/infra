resource "tls_private_key" "github_infra_deploy_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
