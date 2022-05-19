terraform {

  required_version = ">=0.12"

  required_providers {}
}

// resource "local_file" "foo" {
//     content  = "foo!"
//     filename = "/tmp/foo.bar"
// }

resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo \"Hello world from $Name\""
    environment = {
      Name = "juned"
    }
  }
}