terraform {
  backend "gcs" {

    # only create a path
    prefix = "bem-te-vi"
  }
}
