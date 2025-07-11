variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The EC2 instance type."
  type        = string
  default     = "t2.micro"
}


variable "instance_count" {
  description = "Number of web server instances to create."
  type        = number
  default     = 2
}