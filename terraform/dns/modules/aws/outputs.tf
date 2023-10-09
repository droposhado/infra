output "ns" {
  value = aws_route53_zone.main.name_servers
}

output "soa" {
  value = aws_route53_zone.main.primary_name_server
}
