resource "restapi_object" "links" {
  path      = "/client/v4/accounts/${data.cloudflare_zone.main.account_id}/d1/database/${cloudflare_d1_database.main.id}/query"
  object_id = "links_tables_db_obj_id"
  data = jsonencode({
    "params" = [],
    "sql"    = <<EOF
CREATE TABLE IF NOT EXISTS links (
  id INTEGER PRIMARY KEY,
  link TEXT NOT NULL,
  slug TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
EOF
  })
}

resource "restapi_object" "comments" {
  path      = "/client/v4/accounts/${data.cloudflare_zone.main.account_id}/d1/database/${cloudflare_d1_database.main.id}/query"
  object_id = "comments_tables_db_obj_id"
  data = jsonencode({
    "params" = [],
    "sql"    = <<EOF
CREATE TABLE IF NOT EXISTS comments (
  id INTEGER PRIMARY KEY,
  content TEXT,
  link_id INTEGER,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY(link_id) REFERENCES links(id) ON DELETE CASCADE
);
EOF
  })

  depends_on = [restapi_object.links]
}
