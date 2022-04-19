terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.10"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.2.0"
    }
  }

  backend "s3" {
    bucket         = "hello-world-be-state20220419192525754900000001"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    kms_key_id     = "2d1e918b-e9a3-41ce-9745-41250dcd464a"
    dynamodb_table = "hello-world-be-state-lock"
  }

}

locals {
  common_aws_tags = {
    Project = var.project_name
  }
}
