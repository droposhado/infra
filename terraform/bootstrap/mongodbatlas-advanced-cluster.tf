# resource "mongodbatlas_advanced_cluster" "main" {
#   project_id   = mongodbatlas_project.main.id
#   name         = module.mongodb_cluster_name.name
#   cluster_type = "REPLICASET"
#   replication_specs {
#     region_configs {
#       electable_specs {
#         instance_size = "M0"
#         # node_count    = 3
#       }
#       analytics_specs {
#         instance_size = "M0"
#         # node_count    = 1
#       }
#       backing_provider_name = "AWS"
#       provider_name = "TENANT"
#       priority      = 7
#       region_name   = "US_WEST_2"
#     }
#   }

#   # advanced_configuration {
#   #   javascript_enabled                   = true
#   #   oplog_size_mb                        = 991
#   #   sample_refresh_interval_bi_connector = 300
#   # }
# }
