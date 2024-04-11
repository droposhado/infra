output "slug" {
  value = local.slug
}

output "uuid" {
  value = random_uuid.main.result
}