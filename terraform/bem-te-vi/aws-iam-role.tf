resource "aws_iam_role" "main" {
  name               = "iam_for_lambda"
  assume_role_policy = data.aws_iam_policy_document.main.json
}
