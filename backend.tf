terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "juvensys"

    workspaces {
      prefix = "juned-"
    }
  }
}