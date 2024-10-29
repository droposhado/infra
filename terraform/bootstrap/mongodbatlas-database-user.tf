resource "mongodbatlas_database_user" "test" {
  username           = "flaverton"
  password           = "flaverton"
  project_id         = mongodbatlas_project.main.id
  auth_database_name = "admin"

  roles {
    role_name     = "readAnyDatabase"
    database_name = "admin"
  }

  scopes {
    name   = mongodbatlas_cluster.main.name
    type = "CLUSTER"
  }

}