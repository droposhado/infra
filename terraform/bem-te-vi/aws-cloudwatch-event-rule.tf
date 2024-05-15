resource "aws_cloudwatch_event_rule" "main" {

  # every day at 5am
  schedule_expression = "cron(0 5 * * ? *)"
}
