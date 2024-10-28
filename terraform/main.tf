terraform {
  backend "s3" {
    bucket = "$TERRAFORM_BUCKET"
    key    = "$APPLICATION_NAME"
    region = "eu-west-2"
    dynamodb_table = "$TERRAFORM_LOCK"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.73.0"
    }
  }

  required_version = "~> 1.9.0"
}

provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
      Application = ""
    }
  }
}
