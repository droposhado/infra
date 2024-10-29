resource "mongodbatlas_cluster" "main" {
  project_id   = mongodbatlas_project.main.id
  name         = module.mongodb_cluster_name.name
  cluster_type = "REPLICASET"
  provider_name = "TENANT"
  backing_provider_name = "AWS"
  provider_region_name = "US_WEST_2"
  provider_instance_size_name = "M0"

  # termination_protection_enabled = true

  # lifecycle {
  #   prevent_destroy = true
  # }
}