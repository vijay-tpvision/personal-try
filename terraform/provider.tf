provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket         = "mahesh-tf-state-521170656618"
    key            = "terraform/terraform/april25/personal-try/my-state.tfstate"
    region         = "ap-south-1" # AWS Mumbai region
    dynamodb_table = "mahes-tf-state-lock"
    encrypt        = true
  }
}