output "domain" {
  value       = var.domain
  description = "Export domain to use in another workspaces"
}

output "environment" {
  value       = var.environment
  description = "Default environment to workspaces"
}

output "k8s_cluster" {
  value       = local.k8s_cluster
  description = "kubernetes cluster data"
}

output "maya" {
  value       = local.maya
  description = "Generated name to project"
  sensitive   = true
}

output "pg_cluster" {
  value       = local.pg_cluster
  description = "PostgreSQL cluster data"
  sensitive   = true
}

output "redmine" {
  value       = local.redmine
  description = "Generated name to project"
  sensitive   = true
}

output "sabedoria" {
  value       = local.sabedoria
  description = "Generated name to project"
  sensitive   = true
}

output "seed" {
  value       = local.seed
  description = "Seed generated to all workspaces sync"
}

output "team" {
  value       = local.team
  description = "Generated name to teams in projects"
}

output "trakttv" {
  value       = local.trakttv
  description = "Generated name to project"
}

output "wooka" {
  value       = local.wooka
  description = "Generated name to project"
}
