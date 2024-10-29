resource "mongodbatlas_project_ip_access_list" "cloudflare" {
  for_each = toset(data.cloudflare_ip_ranges.main.ipv4_cidr_blocks)

  project_id = mongodbatlas_project.main.id
  cidr_block = each.value
  comment    = "cloudflare cidr block"
}

# ipv6 not working
# resource "mongodbatlas_project_ip_access_list" "cloudflare" {
#   for_each = toset(data.cloudflare_ip_ranges.main.ipv6_cidr_blocks)

#   project_id = mongodbatlas_project.main.id
#   cidr_block = each.value
#   comment    = "cloudflare cidr block"
# }