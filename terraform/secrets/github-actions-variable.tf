resource "github_actions_variable" "baserow_table_ids" {
  repository    = var.github_infra_repo
  variable_name = "BASEROW_TABLE_IDS"
  value         = join(",", local.baserow_table_ids)
}
