resource "aws_iam_access_key" "sabedoria" {
  user = aws_iam_user.sabedoria.name
}
