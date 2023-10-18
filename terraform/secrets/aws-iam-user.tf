resource "aws_iam_user" "sabedoria" {
  name = local.maya.name
  path = "/"
}
