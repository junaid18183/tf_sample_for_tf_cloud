terraform {

  required_version = ">=0.12"

  required_providers {}
}

resource "local_file" "foo" {
    content  = "foo!"
    // filename = "${path.module}/foo.bar"
    filename = "/tmp/foo.bar"
}