output "key" {
  value = {
    "id" : sentry_key.main.id,
    "dsn_public" : sentry_key.main.dsn_public,
    "public" : sentry_key.main.public,
    "secret" : sentry_key.main.secret
  }
}

output "project" {
  value = {
    "id" : sentry_project.main.id,
    "slug" : sentry_project.main.slug
  }
}
