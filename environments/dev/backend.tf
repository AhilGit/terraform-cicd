terraform {

  backend "s3" {
    bucket         = "ahil-terraform-state-bucket"
    key            = "terraform-nginx/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table1"
    encrypt        = true
  }

}