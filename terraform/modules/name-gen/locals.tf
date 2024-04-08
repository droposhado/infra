locals {
  name = "${random_pet.main.id}${random_string.main.result}"
}
