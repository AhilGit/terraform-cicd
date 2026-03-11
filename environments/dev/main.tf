provider "aws" {
  region = var.region
}

module "nginx_server" {
  source = "../../modules/nginx-server"

  ami_id        = var.ami_id
  instance_type = var.instance_type
  instance_name = var.instance_name
  sg_name       = var.sg_name
  vpc_id = var.vpc_id
}