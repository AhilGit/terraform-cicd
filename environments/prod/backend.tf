terraform {
  backend "s3" {
    bucket         = "ahil-terraform-state-us-east-1"
    key            = "nginx/prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-us-east-1"
  }
}