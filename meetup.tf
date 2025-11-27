terraform {
  required_providers {
    random = {
    }
  }
}


provider "random" {
}

resource "null_resource" "test" {
  provisioner "local-exec" {
    command     = "echo Hello from $MEETUP and from $OWNER && The server hostname is $(hostname)"
    working_dir = "/"
    environment = {
      MEETUP = "SODO GDANSK"
      OWNER       = "platfrom-team"
    }
    interpreter = ["/bin/bash", "-c"]
  }
}




