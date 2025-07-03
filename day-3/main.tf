terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ubuntu_server" {
  ami           = "ami-0fc5d935ebf8bc3bc" 
  instance_type = "t2.micro"


  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install nginx -y
              sudo systemctl enable nginx
              sudo systemctl start nginx
              EOF

  tags = {
    Name = "Ubuntu-Web-Server"
  }
}

resource "aws_s3_bucket" "web_content_bucket" {
  bucket = "my-web-content-bucket-${random_id.bucket_suffix.hex}"
  tags = {
    Name        = "WebContentBucket"
    Environment = "Production"
  }
  
}
variable "region" {
  default = "us-east-1"
}

output "public_ip" {
  value = aws_instance.ubuntu_server.public_ip
}


