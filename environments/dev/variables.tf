variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-053b0d53c279acc90"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_name" {
  default = "dev-nginx-server"
}

variable "sg_name" {
  default = "dev-nginx-sg"
}