terraform {
  required_providers {
    random = {
    }
  }
}


provider "random" {
}

provisioner "local-exec" {
  command     = "echo Hello from $MEETUP && hostname & The server IP is ${self.public_ip}"
  working_dir = "/"
  environment = {
    MEETUP = "SODO GDANSK"
    OWNER       = "devops-team"
  }
  interpreter = ["/bin/bash", "-c"]
}