# PROVIDER
terraform {

  required_version = "~> 1.5.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.13"
    }
  }

  backend "s3" {
    bucket         = "tf-notifier-state-v1-arcanjo"
    key            = "terraform.tfstate-arcanjo"
    dynamodb_table = "tf-notifier-state-v1-arcanjo"
    region         = "us-east-1"
  }

}


