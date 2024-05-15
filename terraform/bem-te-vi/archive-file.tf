data "archive_file" "release" {
  type = "zip"

  source_dir  = "${path.module}/src"
  output_path = "${path.module}/bem-te-vi.zip"
}
