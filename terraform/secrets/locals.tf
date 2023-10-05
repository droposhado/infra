locals {
  baserow_table_ids = [
    var.sabedoria_certification_table_id,
    var.sabedoria_course_table_id,
    var.sabedoria_description_table_id,
    var.sabedoria_education_table_id,
    var.sabedoria_interest_table_id,
    var.sabedoria_job_table_id,
    var.sabedoria_project_table_id,

    # intermediate tables
    var.sabedoria_course_review_table_id,
    var.sabedoria_job_application_table_id,
    var.sabedoria_job_description_table_id,
    var.sabedoria_job_price_table_id,
    var.sabedoria_skill_table_id,
    var.sabedoria_week_study_table_id
  ]
  environment = data.terraform_remote_state.seeds.outputs.environment

  sabedoria = {
    name = data.terraform_remote_state.seeds.outputs.sabedoria
    env = {
      "BASEROW_TOKEN" : var.sabedoria_baserow_token
      "BASEROW_URL" : var.sabedoria_baserow_url
      "COURSE_TABLE_ID" : var.sabedoria_course_table_id
      "DESCRIPTION_TABLE_ID" : var.sabedoria_description_table_id
      "EMAIL" : var.sabedoria_email
      "FLASK_APP" : var.sabedoria_flask_app
      "GITHUB" : var.sabedoria_github
      "GUNICORN_ACCESS_LOG_FORMAT" : var.sabedoria_gunicorn_access_log_format
      "INTEREST_TABLE_ID" : var.sabedoria_interest_table_id
      "HOST" : split(":", var.sabedoria_web_bind)[0]
      "JOB_TABLE_ID" : var.sabedoria_job_table_id
      "LANGS" : var.sabedoria_langs
      "LINKEDIN" : var.sabedoria_linkedin
      "NAME" : var.sabedoria_name
      "PORT" : split(":", var.sabedoria_web_bind)[1]
      "PROJECT_TABLE_ID" : var.sabedoria_project_table_id
      "SENTRY_DSN" : sentry_key.sabedoria.dsn_public
      "SITE" : var.sabedoria_site
      "TOKEN" : var.sabedoria_token
      "WEB_BIND" : var.sabedoria_web_bind
    }
  }
  wooka = {
    name = data.terraform_remote_state.seeds.outputs.wooka
    env = {
      "SENTRY_DSN" : sentry_key.wooka.dsn_public
    }
  }
}
