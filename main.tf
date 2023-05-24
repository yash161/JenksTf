provider "aws" {
  region = "us-west-1"  
  access_key = "AKIAYB64KN76OK4L4IIA"
  secret_key = "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"
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "my-bucket1"
  acl    = "private"
  // Add more bucket configurations as needed
}

provider "aws" {
  region = "eu-east-1"  // Change this to the desired region for the second bucket
  access_key = "AKIAYB64KN76OK4L4IIA"
  secret_key = "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"
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "my-bucket2"
  acl    = "private"
}
