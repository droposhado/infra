resource "aws_lambda_function" "main" {
  filename      = data.archive_file.release.output_path
  function_name = module.function_name.name
  role          = aws_iam_role.main.arn
  handler       = "index.handler"

  source_code_hash = data.archive_file.release.output_base64sha256

  # next release change to golang
  runtime = "nodejs18.x"

  environment {
    variables = {
      WEBDAV_SERVER     = var.bemtevi_webdav_server
      WEBDAV_ADRESSBOOK = var.bemtevi_webdav_adressbook
      WEBDAV_USERNAME   = var.bemtevi_webdav_username
      WEBDAV_PASSWORD   = var.bemtevi_webdav_password
      WEBHOOK_URL       = var.bemtevi_webhook_url
    }
  }
}
