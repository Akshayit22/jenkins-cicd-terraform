terraform {
  backend "s3" {
    bucket         = "akshay-s3-bucket-terraform"
    key            = "terraform_learning/terraform.tfstate"
    region         = "us-east-1"
    # dynamodb_table = "akshay-terraform-state-locking"
  }
}