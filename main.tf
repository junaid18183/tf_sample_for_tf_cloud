terraform {

  required_version = ">=0.12"

  required_providers {}
}

# variable "organization" {
#   description = "Terraform Cloud organization"
#   type        = string
# }

# variable "workspaces" {
#   description = "Terraform Cloud workspaces"
#   type        = string
# }

resource "null_resource" "demo" {
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

output "output1" {
  description = "output1"
  value       = "sample output"
}