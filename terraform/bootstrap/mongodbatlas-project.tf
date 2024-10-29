resource "mongodbatlas_project" "main" {
  name   = module.mongodb_project_name.name
  org_id = data.mongodbatlas_roles_org_id.main.org_id
  # project_owner_id = "<OWNER_ACCOUNT_ID>"

  # teams {
  #   team_id    = "5e0fa8c99ccf641c722fe645"
  #   role_names = ["GROUP_OWNER"]

  # }
  # teams {
  #   team_id    = "5e1dd7b4f2a30ba80a70cd4rw"
  #   role_names = ["GROUP_READ_ONLY", "GROUP_DATA_ACCESS_READ_WRITE"]
  # }

  # limits {
  #   name = "atlas.project.deployment.clusters"
  #   value = 26
  # }

  # limits {
  #   name = "atlas.project.deployment.nodesPerPrivateLinkRegion"
  #   value = 51
  # }

  is_collect_database_specifics_statistics_enabled = true
  is_data_explorer_enabled                         = true
  is_extended_storage_sizes_enabled                = true
  is_performance_advisor_enabled                   = true
  is_realtime_performance_panel_enabled            = true
  is_schema_advisor_enabled                        = true
}
