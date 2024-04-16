terraform {
  required_version = "~> 1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.61.0"
    }
  }

  backend "s3" {
    bucket = "learn-cdktf-lambda-hello-name20240409131517887200000001"
    region = "us-west-2"
  }
}
