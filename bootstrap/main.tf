resource "aws_s3_bucket" "terraform_state" {
  bucket = "ahil-terraform-state-us-east-1"

  tags = {
    Name = "Terraform State Bucket"
  }
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform-lock-us-east-1"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}