data "github_repositories" "me" {
  query = "user:${var.github_user} is:private is:public archived:false"
}
