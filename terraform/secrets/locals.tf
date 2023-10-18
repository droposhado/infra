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

  domain_slug = replace(var.domain, ".", "-")

  environment = data.terraform_remote_state.seeds.outputs.environment

  tags = {
    description = "Default tags for this resource"
    default = {
      provider    = "aws"
      workspace   = "secrets"
      environment = var.environment
      region      = var.aws_region_default
    }
  }

  gotify = {
    name : data.terraform_remote_state.seeds.outputs.gotify.name
    image : "gotify/server:2.4.0"
    env : {
      NAME : data.terraform_remote_state.seeds.outputs.gotify.name
      DATABASE_URL : "host=localhost port=5432 user=gotify dbname=gotifydb password=secret"
      PORT : 80
    }
  }

  maya = {
    name : data.terraform_remote_state.seeds.outputs.maya.name
    bucket : data.terraform_remote_state.storage.outputs.maya
    image : "quay.io/droposhado/maya"
    admin : {
      username : data.terraform_remote_state.seeds.outputs.maya.admin.username
      password : data.terraform_remote_state.seeds.outputs.maya.admin.password
    }
    env = {
      DATABASE_URL : ""
      FLASK_APP : var.maya_flask_app
      #GUNICORN_ACCESS_LOG_FORMAT : var.sabedoria_gunicorn_access_log_format
      HOST : split(":", var.sabedoria_web_bind)[0]
      PORT : split(":", var.sabedoria_web_bind)[1]
      SENTRY_DSN : sentry_key.sabedoria.dsn_public
      TOKEN : var.sabedoria_token
      WEB_BIND : var.sabedoria_web_bind
    }
  }

  redmine = {
    name : data.terraform_remote_state.seeds.outputs.redmine.name
    image : "redmine:5.0.6-alpine3.18"
    env : {
      REDMINE_DB_POSTGRES : "host"
      REDMINE_DB_PORT : 5432
      REDMINE_DB_DATABASE : data.terraform_remote_state.seeds.outputs.redmine.name
      REDMINE_DB_USERNAME : data.terraform_remote_state.seeds.outputs.redmine.admin.username
      REDMINE_DB_PASSWORD : data.terraform_remote_state.seeds.outputs.redmine.admin.password
      REDMINE_PLUGINS_MIGRATE : 1
      REDMINE_SECRET_KEY_BASE : data.terraform_remote_state.seeds.outputs.redmine.secret_key
    }
  }
  sabedoria = {
    name : data.terraform_remote_state.seeds.outputs.sabedoria.name
    bucket : data.terraform_remote_state.storage.outputs.sabedoria
    image : "quay.io/droposhado/sabedoria"
    admin : {
      username : data.terraform_remote_state.seeds.outputs.sabedoria.admin.username
      password : data.terraform_remote_state.seeds.outputs.sabedoria.admin.password
    }
    env = {
      BASEROW_TOKEN : var.sabedoria_baserow_token
      BASEROW_URL : var.sabedoria_baserow_url
      COURSE_TABLE_ID : var.sabedoria_course_table_id
      DATABASE_URL : ""
      DESCRIPTION_TABLE_ID : var.sabedoria_description_table_id
      EMAIL : var.sabedoria_email
      FLASK_APP : var.sabedoria_flask_app
      GITHUB : var.sabedoria_github
      #GUNICORN_ACCESS_LOG_FORMAT : var.sabedoria_gunicorn_access_log_format
      INTEREST_TABLE_ID : var.sabedoria_interest_table_id
      HOST : split(":", var.sabedoria_web_bind)[0]
      JOB_TABLE_ID : var.sabedoria_job_table_id
      LANGS : var.sabedoria_langs
      LINKEDIN : var.sabedoria_linkedin
      NAME : var.sabedoria_name
      PORT : split(":", var.sabedoria_web_bind)[1]
      PROJECT_TABLE_ID : var.sabedoria_project_table_id
      SENTRY_DSN : sentry_key.sabedoria.dsn_public
      SITE : var.sabedoria_site
      TOKEN : var.sabedoria_token
      WEB_BIND : var.sabedoria_web_bind
    }
  }
  wooka = {
    name : data.terraform_remote_state.seeds.outputs.wooka
    env = {
      SENTRY_DSN : sentry_key.wooka.dsn_public
    }
  }
}
