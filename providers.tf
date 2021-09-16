terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.50"
    }
  }
  backend "s3" {
    bucket = "awsbucket121312"
    key    = "awsbucket121312/ap-south-1/key"
    region = "ap-south-1"
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}

provider "aws" {
  region = "us-east-1"
  alias = "useast"
}
