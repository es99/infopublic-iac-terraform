terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "infopublic-iac-terraform-testes"
    key    = "modules-iac-infopublic"
    region = "us-east-2"
  }

  required_version = "~> 1.5"
}