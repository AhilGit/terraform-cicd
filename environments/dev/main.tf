provider "aws" {
  region = "ap-south-1"
}

module "nginx_server" {
  source = "../../modules/nginx-server"
}