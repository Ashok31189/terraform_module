provider "aws" {
  region = var.region
}

resource "aws_instance" "webserver" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  tags = {
    Name = var.tags
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("C:/Users/skash/Downloads/pem_mumbai.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install nginx -y",
    ]
  }

}
