resource "random_pet" "main" {
  length = 1
  keepers = var.keepers
}
