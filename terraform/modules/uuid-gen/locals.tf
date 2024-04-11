locals {
  slug = replace(random_uuid.main.result, ".", "")
}