resource "restapi_object" "links" {
  path      = "/client/v4/accounts/${data.cloudflare_zone.main.account_id}/d1/database/${cloudflare_d1_database.main.id}/query"
  object_id = "links_tables_db_obj_id"
  data = jsonencode({
    "params" = [],
    "sql"    = file("sql/links.sql")
  })
}

resource "restapi_object" "comments" {
  path      = "/client/v4/accounts/${data.cloudflare_zone.main.account_id}/d1/database/${cloudflare_d1_database.main.id}/query"
  object_id = "comments_tables_db_obj_id"
  data = jsonencode({
    "params" = [],
    "sql"    = file("sql/comments.sql")
  })

  depends_on = [restapi_object.links]
}
