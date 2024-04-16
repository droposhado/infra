terraform {
  backend "gcs" {

    # only create a path
    prefix = "maps"
  }
}
