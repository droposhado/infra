data "github_repositories" "me" {
  query = "user:${data.github_user.me.login} is:private is:public archived:false"
}
