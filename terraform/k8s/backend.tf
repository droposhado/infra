terraform {
  cloud {
    organization = "droposhado-org"

    workspaces {
      name = "k8s"
    }
  }
}
