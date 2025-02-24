terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "Oregon"
  region = "us-weat-2"
}

provider "aws" {
  alias  = "Mumbai"
  region = "ap-south-1"
}

resource "aws_iam_user" "demouser" {
  name = "sample-user-from-cicd"

  tags = {
    Environment = "CICD"
    CreatedBy   = "Terraform"
    Project     = "DevOps-Automation-pipeline"
    owner       = "AkshayT"
  }
}

resource "time_sleep" "wait_150_seconds" {
  create_duration = "20s"
}