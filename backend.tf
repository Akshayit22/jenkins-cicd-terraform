terraform {
  backend "s3" {
    bucket         = "akshay-s3-bucket-terraform"
    key            = "terraform_cicd/terraform.tfstate"
    region         = "us-east-1"
  }
}