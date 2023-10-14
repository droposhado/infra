output "security_group" {
  value = aws_security_group.cigarra
}

output "vpc" {
  value = module.vpc
}
