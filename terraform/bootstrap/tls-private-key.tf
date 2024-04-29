resource "tls_private_key" "mirror" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
