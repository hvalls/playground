output "test" {
  value = "this is a test"
}

resource "null_resource" "example" {
  # No specific configuration needed
  triggers = {
    # Trigger the provisioners whenever `message` changes
    message = var.message
  }

  provisioner "local-exec" {
    command = "echo Hello, World!"
  }
}
