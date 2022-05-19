terraform {
  backend "remote" {
    organization = "juvensys"

    workspaces {
      name = "tf_cloud_poc"
    }
  }
}