terraform {
  required_version = ">= 1.7.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }

  cloud {
    organization = "my-org"
    workspaces {
      project = "my-project"
      tags = ["my-app"]
    }
  }
}

provider "aws" {
  region = "us-east-1"

  assume_role {
    role_arn = "arn:aws:iam::123456789012:role/terraform"
    session_name = "terraform-my-app"
  }
}