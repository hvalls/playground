output "test" {
  value = "this is a test 1"
}

output "test2" {
  value = "this is a test 2"
}

resource "null_resource" "example" {
  # No specific configuration needed
  triggers = {
    # Trigger the provisioners whenever `message` changes
    message = "this is the message 2"
  }

  provisioner "local-exec" {
    command = "echo Hello, World!"
  }
}


resource "null_resource" "example2" {
  # No specific configuration needed
  triggers = {
    # Trigger the provisioners whenever `message` changes
    message = "this is the message 2"
  }

  provisioner "local-exec" {
    command = "echo Hello, World!"
  }
}
