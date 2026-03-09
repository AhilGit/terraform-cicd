provider "aws" {
  region = "us-east-1"
}

module "nginx_server" {
  source = "../../modules/nginx-server"
}