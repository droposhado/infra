data "archive_file" "dummy" {
  type        = "zip"
  source_file = "${path.module}/dummy.txt"
  output_path = "${path.module}/dummy.zip"
}
