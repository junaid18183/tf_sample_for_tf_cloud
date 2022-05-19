terraform {

  required_version = ">=0.12"

  required_providers {}
}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo \"Hello world from $Name\""
    environment = {
      Name = "juned"
    }
  }

  triggers = {
    always_run = "${timestamp()}"
  }
}