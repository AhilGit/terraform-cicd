variable "ami_id" {
  description = "AMI for EC2"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "instance_name" {
  description = "Name of EC2"
  type        = string
}

variable "sg_name" {
  description = "Security group name"
  type        = string
}