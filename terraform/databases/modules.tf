# module "aiven_pg" {
#   source                  = "./modules/aiven-pg"
#   cloud_name              = var.aiven_cloud_name
#   default_db              = var.default_db
#   maintenance_window_dow  = var.maintenance_window_dow
#   maintenance_window_time = var.maintenance_window_time
#   plan                    = var.aiven_plan
#   pg_version              = var.aiven_pg_version
#   project_name            = var.aiven_project_name
#   service_name            = data.terraform_remote_state.seeds.outputs.k8s_cluster.name
#   termination_protection  = var.termination_protection
# }


module "aws_rds_pg" {
  source               = "./modules/aws-rds"
  db_name              = local.pg_cluster.name
  username             = local.pg_cluster.admin.username
  password             = local.pg_cluster.admin.password
  allocated_storage    = var.allocated_storage
  aws_region_default   = var.aws_region_default
  db_subnet_group_name = local.vpc.database_subnet_group_name
  vpc_security_group_ids = [
    local.vpc.default_security_group_id
  ]
  vpc_id = local.vpc.vpc_id


  tags = merge(local.tags, { engine = "postgresql", version = 14 })
}

# module "aws_dynamodb_maya" {
#   source             = "./modules/aws-dynamodb"
#   aws_region_default = var.aws_region_default
#   name               = data.terraform_remote_state.secrets.outputs.maya.name
#   hash_key           = "id"
#   billing_mode       = var.billing_mode
#   read_capacity      = var.read_capacity
#   write_capacity     = var.write_capacity
#   atributes = [
#     {
#       name = "id"
#       type = "S"
#     },
#     {
#       name = "client_name"
#       type = "S"
#     },
#     {
#       name = "client_version"
#       type = "S"
#     },
#     {
#       name = "creation_date",
#       type = "N"
#     },
#     {
#       name = "last_modification",
#       type = "N"
#     },
#     {
#       name = "quantity",
#       type = "N"
#     },
#     {
#       name = "unit",
#       type = "S"
#     },
#     {
#       name = "type",
#       type = "S"
#     },
#     {
#       name = "username",
#       type = "S"
#     }
#   ]

#   tags = merge(local.tags, { name = data.terraform_remote_state.secrets.outputs.maya.name, database = "dynamodb" })
# }
