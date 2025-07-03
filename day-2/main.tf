provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ubuntu_server" {
  ami           = "ami-0fc5d935ebf8bc3bc" 
  instance_type = "t2.micro"
  key_name      = "my-key-pair"     # Replace with your actual key pair name

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update -y
              sudo apt-get install -y nginx
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF

  tags = {
    Name = "Ubuntu-Web-Server"
  }
}