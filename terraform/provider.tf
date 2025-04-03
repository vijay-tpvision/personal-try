provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "tf_state" {
  bucket = "mahesh-tf-state-521170656618"
  acl    = "private"
}

resource "aws_dynamodb_table" "tf_state_lock" {
  name         = "mahes-tf-state-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}